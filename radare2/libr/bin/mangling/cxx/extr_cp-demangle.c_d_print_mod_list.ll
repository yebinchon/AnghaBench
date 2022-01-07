; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_mod_list.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_print_mod_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { %struct.d_print_template*, %struct.d_print_mod* }
%struct.d_print_template = type { i32 }
%struct.d_print_mod = type { i32, %struct.d_print_mod*, %struct.demangle_component*, %struct.d_print_template* }
%struct.demangle_component = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.demangle_component*, i64 }

@DEMANGLE_COMPONENT_FUNCTION_TYPE = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_ARRAY_TYPE = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_LOCAL_NAME = common dso_local global i64 0, align 8
@DMGL_JAVA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@DEMANGLE_COMPONENT_DEFAULT_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"{default arg#\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"}::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, i32, %struct.d_print_mod*, i32)* @d_print_mod_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_mod_list(%struct.d_print_info* %0, i32 %1, %struct.d_print_mod* %2, i32 %3) #0 {
  %5 = alloca %struct.d_print_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.d_print_mod*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.d_print_template*, align 8
  %10 = alloca %struct.d_print_mod*, align 8
  %11 = alloca %struct.demangle_component*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.d_print_mod* %2, %struct.d_print_mod** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %13 = icmp eq %struct.d_print_mod* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %16 = call i64 @d_print_saw_error(%struct.d_print_info* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %4
  br label %192

19:                                               ; preds = %14
  %20 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %21 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %29 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %28, i32 0, i32 2
  %30 = load %struct.demangle_component*, %struct.demangle_component** %29, align 8
  %31 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @is_fnqual_component_type(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27, %19
  %36 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %39 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %38, i32 0, i32 1
  %40 = load %struct.d_print_mod*, %struct.d_print_mod** %39, align 8
  %41 = load i32, i32* %8, align 4
  call void @d_print_mod_list(%struct.d_print_info* %36, i32 %37, %struct.d_print_mod* %40, i32 %41)
  br label %192

42:                                               ; preds = %27, %24
  %43 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %44 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %46 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %45, i32 0, i32 0
  %47 = load %struct.d_print_template*, %struct.d_print_template** %46, align 8
  store %struct.d_print_template* %47, %struct.d_print_template** %9, align 8
  %48 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %49 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %48, i32 0, i32 3
  %50 = load %struct.d_print_template*, %struct.d_print_template** %49, align 8
  %51 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %52 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %51, i32 0, i32 0
  store %struct.d_print_template* %50, %struct.d_print_template** %52, align 8
  %53 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %54 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %53, i32 0, i32 2
  %55 = load %struct.demangle_component*, %struct.demangle_component** %54, align 8
  %56 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DEMANGLE_COMPONENT_FUNCTION_TYPE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %42
  %61 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %64 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %63, i32 0, i32 2
  %65 = load %struct.demangle_component*, %struct.demangle_component** %64, align 8
  %66 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %67 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %66, i32 0, i32 1
  %68 = load %struct.d_print_mod*, %struct.d_print_mod** %67, align 8
  %69 = call i32 @d_print_function_type(%struct.d_print_info* %61, i32 %62, %struct.demangle_component* %65, %struct.d_print_mod* %68)
  %70 = load %struct.d_print_template*, %struct.d_print_template** %9, align 8
  %71 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %72 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %71, i32 0, i32 0
  store %struct.d_print_template* %70, %struct.d_print_template** %72, align 8
  br label %192

73:                                               ; preds = %42
  %74 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %75 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %74, i32 0, i32 2
  %76 = load %struct.demangle_component*, %struct.demangle_component** %75, align 8
  %77 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DEMANGLE_COMPONENT_ARRAY_TYPE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %85 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %84, i32 0, i32 2
  %86 = load %struct.demangle_component*, %struct.demangle_component** %85, align 8
  %87 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %88 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %87, i32 0, i32 1
  %89 = load %struct.d_print_mod*, %struct.d_print_mod** %88, align 8
  %90 = call i32 @d_print_array_type(%struct.d_print_info* %82, i32 %83, %struct.demangle_component* %86, %struct.d_print_mod* %89)
  %91 = load %struct.d_print_template*, %struct.d_print_template** %9, align 8
  %92 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %93 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %92, i32 0, i32 0
  store %struct.d_print_template* %91, %struct.d_print_template** %93, align 8
  br label %192

94:                                               ; preds = %73
  %95 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %96 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %95, i32 0, i32 2
  %97 = load %struct.demangle_component*, %struct.demangle_component** %96, align 8
  %98 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DEMANGLE_COMPONENT_LOCAL_NAME, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %174

102:                                              ; preds = %94
  %103 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %104 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %103, i32 0, i32 1
  %105 = load %struct.d_print_mod*, %struct.d_print_mod** %104, align 8
  store %struct.d_print_mod* %105, %struct.d_print_mod** %10, align 8
  %106 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %107 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %106, i32 0, i32 1
  store %struct.d_print_mod* null, %struct.d_print_mod** %107, align 8
  %108 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %111 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %110, i32 0, i32 2
  %112 = load %struct.demangle_component*, %struct.demangle_component** %111, align 8
  %113 = call %struct.demangle_component* @d_left(%struct.demangle_component* %112)
  %114 = call i32 @d_print_comp(%struct.d_print_info* %108, i32 %109, %struct.demangle_component* %113)
  %115 = load %struct.d_print_mod*, %struct.d_print_mod** %10, align 8
  %116 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %117 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %116, i32 0, i32 1
  store %struct.d_print_mod* %115, %struct.d_print_mod** %117, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @DMGL_JAVA, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %102
  %123 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %124 = call i32 @d_append_string(%struct.d_print_info* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %128

125:                                              ; preds = %102
  %126 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %127 = call i32 @d_append_char(%struct.d_print_info* %126, i8 signext 46)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %130 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %129, i32 0, i32 2
  %131 = load %struct.demangle_component*, %struct.demangle_component** %130, align 8
  %132 = call %struct.demangle_component* @d_right(%struct.demangle_component* %131)
  store %struct.demangle_component* %132, %struct.demangle_component** %11, align 8
  %133 = load %struct.demangle_component*, %struct.demangle_component** %11, align 8
  %134 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @DEMANGLE_COMPONENT_DEFAULT_ARG, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %128
  %139 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %140 = call i32 @d_append_string(%struct.d_print_info* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %142 = load %struct.demangle_component*, %struct.demangle_component** %11, align 8
  %143 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  %148 = call i32 @d_append_num(%struct.d_print_info* %141, i64 %147)
  %149 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %150 = call i32 @d_append_string(%struct.d_print_info* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %151 = load %struct.demangle_component*, %struct.demangle_component** %11, align 8
  %152 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load %struct.demangle_component*, %struct.demangle_component** %154, align 8
  store %struct.demangle_component* %155, %struct.demangle_component** %11, align 8
  br label %156

156:                                              ; preds = %138, %128
  br label %157

157:                                              ; preds = %163, %156
  %158 = load %struct.demangle_component*, %struct.demangle_component** %11, align 8
  %159 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @is_fnqual_component_type(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load %struct.demangle_component*, %struct.demangle_component** %11, align 8
  %165 = call %struct.demangle_component* @d_left(%struct.demangle_component* %164)
  store %struct.demangle_component* %165, %struct.demangle_component** %11, align 8
  br label %157

166:                                              ; preds = %157
  %167 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.demangle_component*, %struct.demangle_component** %11, align 8
  %170 = call i32 @d_print_comp(%struct.d_print_info* %167, i32 %168, %struct.demangle_component* %169)
  %171 = load %struct.d_print_template*, %struct.d_print_template** %9, align 8
  %172 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %173 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %172, i32 0, i32 0
  store %struct.d_print_template* %171, %struct.d_print_template** %173, align 8
  br label %192

174:                                              ; preds = %94
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %180 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %179, i32 0, i32 2
  %181 = load %struct.demangle_component*, %struct.demangle_component** %180, align 8
  %182 = call i32 @d_print_mod(%struct.d_print_info* %177, i32 %178, %struct.demangle_component* %181)
  %183 = load %struct.d_print_template*, %struct.d_print_template** %9, align 8
  %184 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %185 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %184, i32 0, i32 0
  store %struct.d_print_template* %183, %struct.d_print_template** %185, align 8
  %186 = load %struct.d_print_info*, %struct.d_print_info** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.d_print_mod*, %struct.d_print_mod** %7, align 8
  %189 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %188, i32 0, i32 1
  %190 = load %struct.d_print_mod*, %struct.d_print_mod** %189, align 8
  %191 = load i32, i32* %8, align 4
  call void @d_print_mod_list(%struct.d_print_info* %186, i32 %187, %struct.d_print_mod* %190, i32 %191)
  br label %192

192:                                              ; preds = %176, %166, %81, %60, %35, %18
  ret void
}

declare dso_local i64 @d_print_saw_error(%struct.d_print_info*) #1

declare dso_local i64 @is_fnqual_component_type(i64) #1

declare dso_local i32 @d_print_function_type(%struct.d_print_info*, i32, %struct.demangle_component*, %struct.d_print_mod*) #1

declare dso_local i32 @d_print_array_type(%struct.d_print_info*, i32, %struct.demangle_component*, %struct.d_print_mod*) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, i32, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

declare dso_local i32 @d_append_string(%struct.d_print_info*, i8*) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

declare dso_local i32 @d_append_num(%struct.d_print_info*, i64) #1

declare dso_local i32 @d_print_mod(%struct.d_print_info*, i32, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
