; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_option.c_free_termoptions.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_option.c_free_termoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimoption = type { i32, i32**, i64, i32* }

@options = common dso_local global %struct.vimoption* null, align 8
@P_ALLOCED = common dso_local global i32 0, align 4
@P_DEF_ALLOCED = common dso_local global i32 0, align 4
@VI_DEFAULT = common dso_local global i64 0, align 8
@empty_option = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_termoptions() #0 {
  %1 = alloca %struct.vimoption*, align 8
  %2 = load %struct.vimoption*, %struct.vimoption** @options, align 8
  %3 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %2, i64 0
  store %struct.vimoption* %3, %struct.vimoption** %1, align 8
  br label %4

4:                                                ; preds = %65, %0
  %5 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %6 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %68

9:                                                ; preds = %4
  %10 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %11 = call i64 @istermoption(%struct.vimoption* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %9
  %14 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %15 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @P_ALLOCED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %22 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @free_string_option(i32* %25)
  br label %27

27:                                               ; preds = %20, %13
  %28 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %29 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @P_DEF_ALLOCED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %36 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* @VI_DEFAULT, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @free_string_option(i32* %40)
  br label %42

42:                                               ; preds = %34, %27
  %43 = load i8*, i8** @empty_option, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %46 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32**
  store i32* %44, i32** %48, align 8
  %49 = load i8*, i8** @empty_option, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %52 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i64, i64* @VI_DEFAULT, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  store i32* %50, i32** %55, align 8
  %56 = load i32, i32* @P_ALLOCED, align 4
  %57 = load i32, i32* @P_DEF_ALLOCED, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %61 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %42, %9
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.vimoption*, %struct.vimoption** %1, align 8
  %67 = getelementptr inbounds %struct.vimoption, %struct.vimoption* %66, i32 1
  store %struct.vimoption* %67, %struct.vimoption** %1, align 8
  br label %4

68:                                               ; preds = %4
  %69 = call i32 (...) @clear_termcodes()
  ret void
}

declare dso_local i64 @istermoption(%struct.vimoption*) #1

declare dso_local i32 @free_string_option(i32*) #1

declare dso_local i32 @clear_termcodes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
