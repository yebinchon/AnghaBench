; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.h_ep_func_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.h_ep_func_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep_func = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep_func*)* @ep_func_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_func_free(%struct.ep_func* %0) #0 {
  %2 = alloca %struct.ep_func*, align 8
  %3 = alloca i64, align 8
  store %struct.ep_func* %0, %struct.ep_func** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %7 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %5, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %13 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @ep_var_free(i64 %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %24 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfree(i32 %25)
  %27 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %28 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bfree(i32 %29)
  %31 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %32 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bfree(i32 %33)
  %35 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %36 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %35, i32 0, i32 5
  %37 = call i32 @dstr_free(i32* %36)
  %38 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %39 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %38, i32 0, i32 4
  %40 = bitcast %struct.TYPE_2__* %39 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @da_free(i64 %42, i64 %44)
  %46 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %47 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %46, i32 0, i32 3
  %48 = bitcast %struct.TYPE_2__* %47 to { i64, i64 }*
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @da_free(i64 %50, i64 %52)
  %54 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %55 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %54, i32 0, i32 2
  %56 = bitcast %struct.TYPE_2__* %55 to { i64, i64 }*
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @da_free(i64 %58, i64 %60)
  %62 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %63 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %62, i32 0, i32 1
  %64 = bitcast %struct.TYPE_2__* %63 to { i64, i64 }*
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @da_free(i64 %66, i64 %68)
  %70 = load %struct.ep_func*, %struct.ep_func** %2, align 8
  %71 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %70, i32 0, i32 0
  %72 = bitcast %struct.TYPE_2__* %71 to { i64, i64 }*
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @da_free(i64 %74, i64 %76)
  ret void
}

declare dso_local i32 @ep_var_free(i64) #1

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @da_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
