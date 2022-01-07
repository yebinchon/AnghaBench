; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mach064.c_check_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mach064.c_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"\FE\ED\FA\CF\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\CF\FA\ED\FE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_buffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i32], align 16
  store i32* %0, i32** %3, align 8
  %5 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 16, i1 false)
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @r_buf_size(i32* %6)
  %8 = icmp sgt i32 %7, 4
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %12 = call i32 @r_buf_read_at(i32* %10, i32 0, i32* %11, i32 16)
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %14 = call i32 @memcmp(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %29

17:                                               ; preds = %9
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %19 = call i32 @memcmp(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @is_kernelcache_buffer(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %21, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @r_buf_size(i32*) #2

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #2

declare dso_local i32 @memcmp(i32*, i8*, i32) #2

declare dso_local i32 @is_kernelcache_buffer(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
