; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_conversion.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { %struct.d_print_template*, i32* }
%struct.d_print_template = type { %struct.d_print_template*, i32*, i32 }
%struct.demangle_component = type { i64 }

@DEMANGLE_COMPONENT_TEMPLATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i32, %struct.demangle_component*)* @d_print_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_conversion(%struct.d_print_info* %0, i32 %1, %struct.demangle_component* %2) #0 {
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.demangle_component*, align 8
  %7 = alloca %struct.d_print_template, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %6, align 8
  %8 = bitcast %struct.d_print_template* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %10 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %15 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %14, i32 0, i32 0
  %16 = load %struct.d_print_template*, %struct.d_print_template** %15, align 8
  %17 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %7, i32 0, i32 0
  store %struct.d_print_template* %16, %struct.d_print_template** %17, align 8
  %18 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %19 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %18, i32 0, i32 0
  store %struct.d_print_template* %7, %struct.d_print_template** %19, align 8
  %20 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %21 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %7, i32 0, i32 1
  store i32* %22, i32** %23, align 8
  br label %24

24:                                               ; preds = %13, %3
  %25 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %26 = call %struct.demangle_component* @d_left(%struct.demangle_component* %25)
  %27 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DEMANGLE_COMPONENT_TEMPLATE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %35 = call %struct.demangle_component* @d_left(%struct.demangle_component* %34)
  %36 = call i32 @d_print_comp(%struct.d_print_info* %32, i32 %33, %struct.demangle_component* %35)
  %37 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %38 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %7, i32 0, i32 0
  %43 = load %struct.d_print_template*, %struct.d_print_template** %42, align 8
  %44 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %45 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %44, i32 0, i32 0
  store %struct.d_print_template* %43, %struct.d_print_template** %45, align 8
  br label %46

46:                                               ; preds = %41, %31
  br label %90

47:                                               ; preds = %24
  %48 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %51 = call %struct.demangle_component* @d_left(%struct.demangle_component* %50)
  %52 = call %struct.demangle_component* @d_left(%struct.demangle_component* %51)
  %53 = call i32 @d_print_comp(%struct.d_print_info* %48, i32 %49, %struct.demangle_component* %52)
  %54 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %55 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.d_print_template, %struct.d_print_template* %7, i32 0, i32 0
  %60 = load %struct.d_print_template*, %struct.d_print_template** %59, align 8
  %61 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %62 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %61, i32 0, i32 0
  store %struct.d_print_template* %60, %struct.d_print_template** %62, align 8
  br label %63

63:                                               ; preds = %58, %47
  %64 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %65 = call signext i8 @d_last_char(%struct.d_print_info* %64)
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 60
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %70 = call i32 @d_append_char(%struct.d_print_info* %69, i8 signext 32)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %73 = call i32 @d_append_char(%struct.d_print_info* %72, i8 signext 60)
  %74 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %77 = call %struct.demangle_component* @d_left(%struct.demangle_component* %76)
  %78 = call %struct.demangle_component* @d_right(%struct.demangle_component* %77)
  %79 = call i32 @d_print_comp(%struct.d_print_info* %74, i32 %75, %struct.demangle_component* %78)
  %80 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %81 = call signext i8 @d_last_char(%struct.d_print_info* %80)
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 62
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %86 = call i32 @d_append_char(%struct.d_print_info* %85, i8 signext 32)
  br label %87

87:                                               ; preds = %84, %71
  %88 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %89 = call i32 @d_append_char(%struct.d_print_info* %88, i8 signext 62)
  br label %90

90:                                               ; preds = %87, %46
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #2

declare dso_local i32 @d_print_comp(%struct.d_print_info*, i32, %struct.demangle_component*) #2

declare dso_local signext i8 @d_last_char(%struct.d_print_info*) #2

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #2

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
