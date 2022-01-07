; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_cplus_demangle_mangled_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_cplus_demangle_mangled_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DMGL_PARAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info* %0, i32 %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.d_info*, %struct.d_info** %4, align 8
  %8 = call i32 @d_check_char(%struct.d_info* %7, i8 signext 95)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %64

14:                                               ; preds = %10, %2
  %15 = load %struct.d_info*, %struct.d_info** %4, align 8
  %16 = call i32 @d_check_char(%struct.d_info* %15, i8 signext 90)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %64

19:                                               ; preds = %14
  %20 = load %struct.d_info*, %struct.d_info** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.demangle_component* @d_encoding(%struct.d_info* %20, i32 %21)
  store %struct.demangle_component* %22, %struct.demangle_component** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %19
  %26 = load %struct.d_info*, %struct.d_info** %4, align 8
  %27 = getelementptr inbounds %struct.d_info, %struct.d_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMGL_PARAMS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %57, %32
  %34 = load %struct.d_info*, %struct.d_info** %4, align 8
  %35 = call signext i8 @d_peek_char(%struct.d_info* %34)
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.d_info*, %struct.d_info** %4, align 8
  %40 = call signext i8 @d_peek_next_char(%struct.d_info* %39)
  %41 = call i64 @IS_LOWER(i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load %struct.d_info*, %struct.d_info** %4, align 8
  %45 = call signext i8 @d_peek_next_char(%struct.d_info* %44)
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 95
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.d_info*, %struct.d_info** %4, align 8
  %50 = call signext i8 @d_peek_next_char(%struct.d_info* %49)
  %51 = call i64 @IS_DIGIT(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %43, %38
  %54 = phi i1 [ true, %43 ], [ true, %38 ], [ %52, %48 ]
  br label %55

55:                                               ; preds = %53, %33
  %56 = phi i1 [ false, %33 ], [ %54, %53 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = load %struct.d_info*, %struct.d_info** %4, align 8
  %59 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %60 = call %struct.demangle_component* @d_clone_suffix(%struct.d_info* %58, %struct.demangle_component* %59)
  store %struct.demangle_component* %60, %struct.demangle_component** %6, align 8
  br label %33

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %25, %19
  %63 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  store %struct.demangle_component* %63, %struct.demangle_component** %3, align 8
  br label %64

64:                                               ; preds = %62, %18, %13
  %65 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %65
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_encoding(%struct.d_info*, i32) #1

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i64 @IS_LOWER(i8 signext) #1

declare dso_local signext i8 @d_peek_next_char(%struct.d_info*) #1

declare dso_local i64 @IS_DIGIT(i8 signext) #1

declare dso_local %struct.demangle_component* @d_clone_suffix(%struct.d_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
