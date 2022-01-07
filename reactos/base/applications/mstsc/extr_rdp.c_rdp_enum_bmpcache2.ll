; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_enum_bmpcache2.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_rdp_enum_bmpcache2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BMPCACHE2_NUM_PSTCELLS = common dso_local global i32 0, align 4
@PDU_FLAG_FIRST = common dso_local global i64 0, align 8
@PDU_FLAG_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rdp_enum_bmpcache2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_enum_bmpcache2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @BMPCACHE2_NUM_PSTCELLS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  store i64 0, i64* %5, align 8
  %12 = call i64 @pstcache_enumerate(i32 2, i32* %11)
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %42, %0
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub nsw i64 %18, %19
  %21 = call i64 @MIN(i64 %20, i32 169)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = mul i64 %22, 4
  %24 = add i64 24, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @rdp_init_data(i32 %25)
  store i32 %26, i32* %1, align 4
  store i64 0, i64* %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load i64, i64* @PDU_FLAG_FIRST, align 8
  %31 = load i64, i64* %7, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = sub nsw i64 %34, %35
  %37 = icmp sle i64 %36, 169
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64, i64* @PDU_FLAG_LAST, align 8
  %40 = load i64, i64* %7, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @out_uint32_le(i32 %43, i64 0)
  %45 = load i32, i32* %1, align 4
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @out_uint16_le(i32 %45, i64 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @out_uint16_le(i32 %48, i64 0)
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @out_uint16_le(i32 %50, i64 0)
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @out_uint16_le(i32 %52, i64 0)
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @out_uint16_le(i32 %54, i64 0)
  %56 = load i32, i32* %1, align 4
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @out_uint16_le(i32 %56, i64 %57)
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @out_uint32_le(i32 %59, i64 0)
  %61 = load i32, i32* %1, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @out_uint32_le(i32 %61, i64 %62)
  %64 = load i32, i32* %1, align 4
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i32, i32* %11, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %6, align 8
  %69 = mul i64 %68, 4
  %70 = call i32 @out_uint8a(i32 %64, i32 %67, i64 %69)
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @s_mark_end(i32 %71)
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @rdp_send_data(i32 %73, i32 43)
  %75 = load i64, i64* %5, align 8
  %76 = add nsw i64 %75, 169
  store i64 %76, i64* %5, align 8
  br label %13

77:                                               ; preds = %13
  %78 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %78)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pstcache_enumerate(i32, i32*) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32 @rdp_init_data(i32) #2

declare dso_local i32 @out_uint32_le(i32, i64) #2

declare dso_local i32 @out_uint16_le(i32, i64) #2

declare dso_local i32 @out_uint8a(i32, i32, i64) #2

declare dso_local i32 @s_mark_end(i32) #2

declare dso_local i32 @rdp_send_data(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
