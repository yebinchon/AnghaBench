; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_src_kill.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_src_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_input_src = type { i32 (%struct.mp_input_src*)*, %struct.TYPE_2__*, i32 (%struct.mp_input_src*)*, %struct.input_ctx* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.input_ctx = type { i32, %struct.mp_input_src** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_input_src*)* @mp_input_src_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_input_src_kill(%struct.mp_input_src* %0) #0 {
  %2 = alloca %struct.mp_input_src*, align 8
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca i32, align 4
  store %struct.mp_input_src* %0, %struct.mp_input_src** %2, align 8
  %5 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %6 = icmp ne %struct.mp_input_src* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %85

8:                                                ; preds = %1
  %9 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %10 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %9, i32 0, i32 3
  %11 = load %struct.input_ctx*, %struct.input_ctx** %10, align 8
  store %struct.input_ctx* %11, %struct.input_ctx** %3, align 8
  %12 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %13 = call i32 @input_lock(%struct.input_ctx* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %80, %8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %14
  %21 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %21, i32 0, i32 1
  %23 = load %struct.mp_input_src**, %struct.mp_input_src*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mp_input_src*, %struct.mp_input_src** %23, i64 %25
  %27 = load %struct.mp_input_src*, %struct.mp_input_src** %26, align 8
  %28 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %29 = icmp eq %struct.mp_input_src* %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %20
  %31 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %31, i32 0, i32 1
  %33 = load %struct.mp_input_src**, %struct.mp_input_src*** %32, align 8
  %34 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @MP_TARRAY_REMOVE_AT(%struct.mp_input_src** %33, i32 %36, i32 %37)
  %39 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %40 = call i32 @input_unlock(%struct.input_ctx* %39)
  %41 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %42 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %41, i32 0, i32 2
  %43 = load i32 (%struct.mp_input_src*)*, i32 (%struct.mp_input_src*)** %42, align 8
  %44 = icmp ne i32 (%struct.mp_input_src*)* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %47 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %46, i32 0, i32 2
  %48 = load i32 (%struct.mp_input_src*)*, i32 (%struct.mp_input_src*)** %47, align 8
  %49 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %50 = call i32 %48(%struct.mp_input_src* %49)
  br label %51

51:                                               ; preds = %45, %30
  %52 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %53 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %60 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pthread_join(i32 %63, i32* null)
  br label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %67 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %66, i32 0, i32 0
  %68 = load i32 (%struct.mp_input_src*)*, i32 (%struct.mp_input_src*)** %67, align 8
  %69 = icmp ne i32 (%struct.mp_input_src*)* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %72 = getelementptr inbounds %struct.mp_input_src, %struct.mp_input_src* %71, i32 0, i32 0
  %73 = load i32 (%struct.mp_input_src*)*, i32 (%struct.mp_input_src*)** %72, align 8
  %74 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %75 = call i32 %73(%struct.mp_input_src* %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.mp_input_src*, %struct.mp_input_src** %2, align 8
  %78 = call i32 @talloc_free(%struct.mp_input_src* %77)
  br label %85

79:                                               ; preds = %20
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %14

83:                                               ; preds = %14
  %84 = call i32 (...) @abort() #3
  unreachable

85:                                               ; preds = %76, %7
  ret void
}

declare dso_local i32 @input_lock(%struct.input_ctx*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.mp_input_src**, i32, i32) #1

declare dso_local i32 @input_unlock(%struct.input_ctx*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @talloc_free(%struct.mp_input_src*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
