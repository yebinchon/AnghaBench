; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_hio.c_GetVisibilityMapPins.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_hio.c_GetVisibilityMapPins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidBuffer = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i64*, i64*)* @GetVisibilityMapPins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetVisibilityMapPins(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @BufferIsValid(i64 %17)
  %19 = call i32 @Assert(i32 %18)
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @InvalidBuffer, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %7
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp sle i64 %24, %25
  br label %27

27:                                               ; preds = %23, %7
  %28 = phi i1 [ true, %7 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  br label %31

31:                                               ; preds = %27, %131
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @BufferGetPage(i64 %32)
  %34 = call i64 @PageIsAllVisible(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i64, i64* %11, align 8
  %38 = load i64*, i64** %13, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @visibilitymap_pin_ok(i64 %37, i64 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %36, %31
  %44 = phi i1 [ false, %31 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %15, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @InvalidBuffer, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @BufferGetPage(i64 %50)
  %52 = call i64 @PageIsAllVisible(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i64, i64* %12, align 8
  %56 = load i64*, i64** %14, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @visibilitymap_pin_ok(i64 %55, i64 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %54, %49, %43
  %62 = phi i1 [ false, %49 ], [ false, %43 ], [ %60, %54 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %132

70:                                               ; preds = %66, %61
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %73 = call i32 @LockBuffer(i64 %71, i32 %72)
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* @InvalidBuffer, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %84 = call i32 @LockBuffer(i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %77, %70
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = load i64, i64* %11, align 8
  %91 = load i64*, i64** %13, align 8
  %92 = call i32 @visibilitymap_pin(i32 %89, i64 %90, i64* %91)
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load i64, i64* %12, align 8
  %99 = load i64*, i64** %14, align 8
  %100 = call i32 @visibilitymap_pin(i32 %97, i64 %98, i64* %99)
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i64, i64* %9, align 8
  %103 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %104 = call i32 @LockBuffer(i64 %102, i32 %103)
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @InvalidBuffer, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i64, i64* %10, align 8
  %114 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %115 = call i32 @LockBuffer(i64 %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %108, %101
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @InvalidBuffer, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %130, label %120

120:                                              ; preds = %116
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %10, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127, %120, %116
  br label %132

131:                                              ; preds = %127, %124
  br label %31

132:                                              ; preds = %69, %130
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i64) #1

declare dso_local i64 @PageIsAllVisible(i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @visibilitymap_pin_ok(i64, i64) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @visibilitymap_pin(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
