; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_function_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_function_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { %struct.d_print_mod* }
%struct.demangle_component = type { i32 }
%struct.d_print_mod = type { %struct.TYPE_2__*, i64, %struct.d_print_mod* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i32, %struct.demangle_component*, %struct.d_print_mod*)* @d_print_function_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_function_type(%struct.d_print_info* %0, i32 %1, %struct.demangle_component* %2, %struct.d_print_mod* %3) #0 {
  %5 = alloca %struct.d_print_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  %8 = alloca %struct.d_print_mod*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.d_print_mod*, align 8
  %12 = alloca %struct.d_print_mod*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %7, align 8
  store %struct.d_print_mod* %3, %struct.d_print_mod** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.d_print_mod*, %struct.d_print_mod** %8, align 8
  store %struct.d_print_mod* %13, %struct.d_print_mod** %11, align 8
  br label %14

14:                                               ; preds = %38, %4
  %15 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %16 = icmp ne %struct.d_print_mod* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %19 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %42

23:                                               ; preds = %17
  %24 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %25 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %32 [
    i32 134, label %29
    i32 132, label %29
    i32 130, label %29
    i32 131, label %30
    i32 128, label %30
    i32 136, label %30
    i32 129, label %30
    i32 137, label %30
    i32 135, label %30
    i32 133, label %30
  ]

29:                                               ; preds = %23, %23, %23
  store i32 1, i32* %9, align 4
  br label %33

30:                                               ; preds = %23, %23, %23, %23, %23, %23, %23
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %33

31:                                               ; No predecessors!
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %31, %30, %29
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %42

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.d_print_mod*, %struct.d_print_mod** %11, align 8
  %40 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %39, i32 0, i32 2
  %41 = load %struct.d_print_mod*, %struct.d_print_mod** %40, align 8
  store %struct.d_print_mod* %41, %struct.d_print_mod** %11, align 8
  br label %14

42:                                               ; preds = %36, %22, %14
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %50 = call signext i8 @d_last_char(%struct.d_print_info* %49)
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 40
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %55 = call signext i8 @d_last_char(%struct.d_print_info* %54)
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 42
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %53, %48
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %65 = call signext i8 @d_last_char(%struct.d_print_info* %64)
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 32
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %70 = call i32 @d_append_char(%struct.d_print_info* %69, i8 signext 32)
  br label %71

71:                                               ; preds = %68, %63, %60
  %72 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %73 = call i32 @d_append_char(%struct.d_print_info* %72, i8 signext 40)
  br label %74

74:                                               ; preds = %71, %42
  %75 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %76 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %75, i32 0, i32 0
  %77 = load %struct.d_print_mod*, %struct.d_print_mod** %76, align 8
  store %struct.d_print_mod* %77, %struct.d_print_mod** %12, align 8
  %78 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %79 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %78, i32 0, i32 0
  store %struct.d_print_mod* null, %struct.d_print_mod** %79, align 8
  %80 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.d_print_mod*, %struct.d_print_mod** %8, align 8
  %83 = call i32 @d_print_mod_list(%struct.d_print_info* %80, i32 %81, %struct.d_print_mod* %82, i32 0)
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %88 = call i32 @d_append_char(%struct.d_print_info* %87, i8 signext 41)
  br label %89

89:                                               ; preds = %86, %74
  %90 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %91 = call i32 @d_append_char(%struct.d_print_info* %90, i8 signext 40)
  %92 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %93 = call i32* @d_right(%struct.demangle_component* %92)
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %99 = call i32* @d_right(%struct.demangle_component* %98)
  %100 = call i32 @d_print_comp(%struct.d_print_info* %96, i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %103 = call i32 @d_append_char(%struct.d_print_info* %102, i8 signext 41)
  %104 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.d_print_mod*, %struct.d_print_mod** %8, align 8
  %107 = call i32 @d_print_mod_list(%struct.d_print_info* %104, i32 %105, %struct.d_print_mod* %106, i32 1)
  %108 = load %struct.d_print_mod*, %struct.d_print_mod** %12, align 8
  %109 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %110 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %109, i32 0, i32 0
  store %struct.d_print_mod* %108, %struct.d_print_mod** %110, align 8
  ret void
}

declare dso_local signext i8 @d_last_char(%struct.d_print_info*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local i32 @d_print_mod_list(%struct.d_print_info*, i32, %struct.d_print_mod*, i32) #1

declare dso_local i32* @d_right(%struct.demangle_component*) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
