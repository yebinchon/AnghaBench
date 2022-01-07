; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_omf.c_check_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_omf.c_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_buffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca [1024 x i32], align 16
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @r_buf_read_at(i32* %11, i32 0, i32* %5, i32 1)
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 128
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 130
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %77

22:                                               ; preds = %18, %15
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @r_buf_read_le16_at(i32* %23, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @r_buf_read_at(i32* %25, i32 3, i32* %7, i32 1)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @r_buf_size(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 2
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 3
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %22
  store i32 0, i32* %2, align 4
  br label %77

39:                                               ; preds = %33
  store i32 4, i32* %4, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @r_buf_read_at(i32* %46, i32 %47, i32* %5, i32 1)
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %59

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 127
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %77

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %40

59:                                               ; preds = %50, %40
  %60 = load i32*, i32** %3, align 8
  %61 = call i32* @r_buf_data(i32* %60, i32* null)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = bitcast [1024 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %65, i8 0, i64 4096, i1 false)
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 0
  %68 = call i32 @r_buf_read_at(i32* %66, i32 0, i32* %67, i32 4096)
  %69 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 0
  %70 = call i32 @r_bin_checksum_omf_ok(i32* %69, i32 4096)
  store i32 %70, i32* %2, align 4
  br label %77

71:                                               ; preds = %59
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @r_return_val_if_fail(i32* %72, i32 0)
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @r_bin_checksum_omf_ok(i32* %74, i32 %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %71, %64, %54, %38, %21, %14
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @r_buf_read_at(i32*, i32, i32*, i32) #1

declare dso_local i32 @r_buf_read_le16_at(i32*, i32) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32* @r_buf_data(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @r_bin_checksum_omf_ok(i32*, i32) #1

declare dso_local i32 @r_return_val_if_fail(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
