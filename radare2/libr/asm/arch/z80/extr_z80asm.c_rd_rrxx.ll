; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_z80asm.c_rd_rrxx.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_z80asm.c_rd_rrxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ix\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"iy\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"hl\00", align 1
@indexed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @rd_rrxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_rrxx(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca [5 x i8*], align 16
  %5 = alloca [5 x i8*], align 16
  %6 = alloca [5 x i8*], align 16
  store i8** %0, i8*** %3, align 8
  %7 = bitcast [5 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 40, i1 false)
  %8 = bitcast i8* %7 to [5 x i8*]*
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %12, align 8
  %13 = bitcast [5 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false)
  %14 = bitcast i8* %13 to [5 x i8*]*
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %18, align 8
  %19 = bitcast [5 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 40, i1 false)
  %20 = bitcast i8* %19 to [5 x i8*]*
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %22, align 8
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8** %23, align 16
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %24, align 8
  %25 = load i32, i32* @indexed, align 4
  %26 = icmp eq i32 %25, 221
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i8**, i8*** %3, align 8
  %29 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %30 = call i32 @indx(i8** %28, i8** %29, i32 1, i32* null)
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %1
  %32 = load i32, i32* @indexed, align 4
  %33 = icmp eq i32 %32, 253
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8**, i8*** %3, align 8
  %36 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  %37 = call i32 @indx(i8** %35, i8** %36, i32 1, i32* null)
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %31
  %39 = load i8**, i8*** %3, align 8
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %41 = call i32 @indx(i8** %39, i8** %40, i32 1, i32* null)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %34, %27
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @indx(i8**, i8**, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
