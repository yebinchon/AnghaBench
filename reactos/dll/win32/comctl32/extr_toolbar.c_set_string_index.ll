; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_set_string_index.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_set_string_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i64)* @set_string_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_string_index(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @IS_INTRESOURCE(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = call i64 @TOOLBAR_ButtonHasString(%struct.TYPE_4__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to i32**
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @Str_SetPtrW(i32** %26, i32* %29)
  br label %39

31:                                               ; preds = %20
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to i32**
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @Str_SetPtrAtoW(i32** %34, i8* %37)
  br label %39

39:                                               ; preds = %31, %23
  br label %55

40:                                               ; preds = %10, %3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = call i64 @TOOLBAR_ButtonHasString(%struct.TYPE_4__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @Free(i32* %49)
  br label %51

51:                                               ; preds = %44, %40
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %39
  ret void
}

declare dso_local i32 @IS_INTRESOURCE(i32) #1

declare dso_local i64 @TOOLBAR_ButtonHasString(%struct.TYPE_4__*) #1

declare dso_local i32 @Str_SetPtrW(i32**, i32*) #1

declare dso_local i32 @Str_SetPtrAtoW(i32**, i8*) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
