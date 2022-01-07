; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dyldcache.c_check_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dyldcache.c_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"dyld\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"arm64\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_buffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca [9 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @r_buf_size(i32* %8)
  %10 = icmp slt i32 %9, 32
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = bitcast [9 x i64]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 72, i1 false)
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds [9 x i64], [9 x i64]* %5, i64 0, i64 0
  %16 = call i32 @r_buf_read_at(i32* %14, i32 9, i64* %15, i32 71)
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %19 = call i32 @r_buf_read_at(i32* %17, i32 0, i64* %18, i32 32)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 32
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %25 = call i64 @memcmp(i64* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %12
  store i32 0, i32* %2, align 4
  br label %42

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = getelementptr inbounds [9 x i64], [9 x i64]* %5, i64 0, i64 0
  %33 = load i64, i64* %32, align 16
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds [9 x i64], [9 x i64]* %5, i64 0, i64 0
  %37 = bitcast i64* %36 to i8*
  %38 = call i32 @strstr(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %42

41:                                               ; preds = %35, %31, %28
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %27, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @r_buf_size(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @r_buf_read_at(i32*, i32, i64*, i32) #1

declare dso_local i64 @memcmp(i64*, i8*, i32) #1

declare dso_local i32 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
