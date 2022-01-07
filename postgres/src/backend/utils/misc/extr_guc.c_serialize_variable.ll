; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_serialize_variable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_serialize_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i8*, i32, i8*, i32, i32, i32 }
%struct.config_bool = type { i32* }
%struct.config_int = type { i8** }
%struct.config_real = type { i32* }
%struct.config_string = type { i8** }
%struct.config_enum = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.*e\00", align 1
@REALTYPE_PRECISION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*, %struct.config_generic*)* @serialize_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serialize_variable(i8** %0, i32* %1, %struct.config_generic* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.config_generic*, align 8
  %7 = alloca %struct.config_bool*, align 8
  %8 = alloca %struct.config_int*, align 8
  %9 = alloca %struct.config_real*, align 8
  %10 = alloca %struct.config_string*, align 8
  %11 = alloca %struct.config_enum*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.config_generic* %2, %struct.config_generic** %6, align 8
  %12 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %13 = call i64 @can_skip_gucvar(%struct.config_generic* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %135

16:                                               ; preds = %3
  %17 = load i8**, i8*** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %20 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8**, i32*, i8*, ...) @do_serialize(i8** %17, i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %24 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %91 [
    i32 132, label %26
    i32 130, label %39
    i32 129, label %49
    i32 128, label %60
    i32 131, label %79
  ]

26:                                               ; preds = %16
  %27 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %28 = bitcast %struct.config_generic* %27 to %struct.config_bool*
  store %struct.config_bool* %28, %struct.config_bool** %7, align 8
  %29 = load i8**, i8*** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.config_bool*, %struct.config_bool** %7, align 8
  %32 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 (i8**, i32*, i8*, ...) @do_serialize(i8** %29, i32* %30, i8* %37)
  br label %91

39:                                               ; preds = %16
  %40 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %41 = bitcast %struct.config_generic* %40 to %struct.config_int*
  store %struct.config_int* %41, %struct.config_int** %8, align 8
  %42 = load i8**, i8*** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.config_int*, %struct.config_int** %8, align 8
  %45 = getelementptr inbounds %struct.config_int, %struct.config_int* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8**, i32*, i8*, ...) @do_serialize(i8** %42, i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %91

49:                                               ; preds = %16
  %50 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %51 = bitcast %struct.config_generic* %50 to %struct.config_real*
  store %struct.config_real* %51, %struct.config_real** %9, align 8
  %52 = load i8**, i8*** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @REALTYPE_PRECISION, align 4
  %55 = load %struct.config_real*, %struct.config_real** %9, align 8
  %56 = getelementptr inbounds %struct.config_real, %struct.config_real* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8**, i32*, i8*, ...) @do_serialize(i8** %52, i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %54, i32 %58)
  br label %91

60:                                               ; preds = %16
  %61 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %62 = bitcast %struct.config_generic* %61 to %struct.config_string*
  store %struct.config_string* %62, %struct.config_string** %10, align 8
  %63 = load i8**, i8*** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.config_string*, %struct.config_string** %10, align 8
  %66 = getelementptr inbounds %struct.config_string, %struct.config_string* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.config_string*, %struct.config_string** %10, align 8
  %72 = getelementptr inbounds %struct.config_string, %struct.config_string* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = load i8*, i8** %73, align 8
  br label %76

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %70
  %77 = phi i8* [ %74, %70 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %75 ]
  %78 = call i32 (i8**, i32*, i8*, ...) @do_serialize(i8** %63, i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %77)
  br label %91

79:                                               ; preds = %16
  %80 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %81 = bitcast %struct.config_generic* %80 to %struct.config_enum*
  store %struct.config_enum* %81, %struct.config_enum** %11, align 8
  %82 = load i8**, i8*** %4, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.config_enum*, %struct.config_enum** %11, align 8
  %85 = load %struct.config_enum*, %struct.config_enum** %11, align 8
  %86 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @config_enum_lookup_by_value(%struct.config_enum* %84, i32 %88)
  %90 = call i32 (i8**, i32*, i8*, ...) @do_serialize(i8** %82, i32* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %16, %79, %76, %49, %39, %26
  %92 = load i8**, i8*** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %95 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %100 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  br label %103

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %98
  %104 = phi i8* [ %101, %98 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %102 ]
  %105 = call i32 (i8**, i32*, i8*, ...) @do_serialize(i8** %92, i32* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %104)
  %106 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %107 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %124

110:                                              ; preds = %103
  %111 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %112 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i8**, i8*** %4, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %122 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %121, i32 0, i32 5
  %123 = call i32 @do_serialize_binary(i8** %119, i32* %120, i32* %122, i32 4)
  br label %124

124:                                              ; preds = %118, %110, %103
  %125 = load i8**, i8*** %4, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %128 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %127, i32 0, i32 4
  %129 = call i32 @do_serialize_binary(i8** %125, i32* %126, i32* %128, i32 4)
  %130 = load i8**, i8*** %4, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %133 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %132, i32 0, i32 3
  %134 = call i32 @do_serialize_binary(i8** %130, i32* %131, i32* %133, i32 4)
  br label %135

135:                                              ; preds = %124, %15
  ret void
}

declare dso_local i64 @can_skip_gucvar(%struct.config_generic*) #1

declare dso_local i32 @do_serialize(i8**, i32*, i8*, ...) #1

declare dso_local i8* @config_enum_lookup_by_value(%struct.config_enum*, i32) #1

declare dso_local i32 @do_serialize_binary(i8**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
