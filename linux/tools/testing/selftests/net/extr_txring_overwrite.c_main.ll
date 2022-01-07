; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_txring_overwrite.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_txring_overwrite.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.payload_patterns = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"close t\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"close r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = bitcast [3 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.main.payload_patterns, i32 0, i32 0), i64 3, i1 false)
  store i32 0, i32* %10, align 4
  %12 = call i32 (...) @setup_rx()
  store i32 %12, i32* %8, align 4
  %13 = call i32 @setup_tx(i8** %7)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @send_pkt(i32 %14, i8* %15, i8 signext %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @send_pkt(i32 %19, i8* %20, i8 signext %22)
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @read_verify_pkt(i32 %24, i8 signext %26)
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @read_verify_pkt(i32 %30, i8 signext %32)
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @close(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @error(i32 1, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %2
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @close(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @error(i32 1, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_rx(...) #2

declare dso_local i32 @setup_tx(i8**) #2

declare dso_local i32 @send_pkt(i32, i8*, i8 signext) #2

declare dso_local i32 @read_verify_pkt(i32, i8 signext) #2

declare dso_local i64 @close(i32) #2

declare dso_local i32 @error(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
