; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_patch_pe_headers.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mdmp/extr_mdmp.c_r_bin_mdmp_patch_pe_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @r_bin_mdmp_patch_pe_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_mdmp_patch_pe_headers(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = bitcast %struct.TYPE_8__* %4 to i32*
  %10 = call i32 @r_buf_read_at(i32* %8, i64 0, i32* %9, i32 8)
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = bitcast %struct.TYPE_7__* %5 to i32*
  %15 = call i32 @r_buf_read_at(i32* %11, i64 %13, i32* %14, i32 16)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 4
  %19 = add i64 %18, 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  store i64 %23, i64* %6, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %50, %1
  %25 = load i32, i32* %3, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load i32*, i32** %2, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = add i64 %32, %35
  %37 = bitcast %struct.TYPE_6__* %7 to i32*
  %38 = call i32 @r_buf_read_at(i32* %31, i64 %36, i32* %37, i32 8)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = add i64 %43, %46
  %48 = bitcast %struct.TYPE_6__* %7 to i32*
  %49 = call i32 @r_buf_write_at(i32* %42, i64 %47, i32* %48, i32 8)
  br label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %24

53:                                               ; preds = %24
  ret i32 1
}

declare dso_local i32 @r_buf_read_at(i32*, i64, i32*, i32) #1

declare dso_local i32 @r_buf_write_at(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
