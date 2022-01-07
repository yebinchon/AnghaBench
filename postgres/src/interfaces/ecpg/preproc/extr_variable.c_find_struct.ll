; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_find_struct.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_find_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ECPGt_array = common dso_local global i64 0, align 8
@PARSE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"variable \22%s\22 is not a pointer\00", align 1
@ECPGt_struct = common dso_local global i64 0, align 8
@ECPGt_union = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"variable \22%s\22 is not a pointer to a structure or a union\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"variable \22%s\22 is neither a structure nor a union\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"variable \22%s\22 is not an array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.variable* (i8*, i8*, i8*)* @find_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.variable* @find_struct(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.variable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.variable*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %9, align 1
  %12 = load i8*, i8** %6, align 8
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.variable* @find_variable(i8* %13)
  store %struct.variable* %14, %struct.variable** %8, align 8
  %15 = load i8, i8* %9, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %75

18:                                               ; preds = %3
  %19 = load %struct.variable*, %struct.variable** %8, align 8
  %20 = getelementptr inbounds %struct.variable, %struct.variable* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ECPGt_array, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @PARSE_ERROR, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @mmfatal(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.variable*, %struct.variable** %8, align 8
  %32 = getelementptr inbounds %struct.variable, %struct.variable* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ECPGt_struct, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = load %struct.variable*, %struct.variable** %8, align 8
  %43 = getelementptr inbounds %struct.variable, %struct.variable* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ECPGt_union, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* @PARSE_ERROR, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @mmfatal(i32 %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %52, %41, %30
  %57 = load i8, i8* %9, align 1
  %58 = load i8*, i8** %6, align 8
  store i8 %57, i8* %58, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %7, align 8
  %62 = load %struct.variable*, %struct.variable** %8, align 8
  %63 = getelementptr inbounds %struct.variable, %struct.variable* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.variable*, %struct.variable** %8, align 8
  %72 = getelementptr inbounds %struct.variable, %struct.variable* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.variable* @find_struct_member(i8* %59, i8* %61, i32 %70, i32 %73)
  store %struct.variable* %74, %struct.variable** %4, align 8
  br label %170

75:                                               ; preds = %3
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = icmp eq i8* %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %75
  %80 = load %struct.variable*, %struct.variable** %8, align 8
  %81 = getelementptr inbounds %struct.variable, %struct.variable* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ECPGt_struct, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %79
  %88 = load %struct.variable*, %struct.variable** %8, align 8
  %89 = getelementptr inbounds %struct.variable, %struct.variable* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ECPGt_union, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @PARSE_ERROR, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @mmfatal(i32 %96, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %95, %87, %79
  %100 = load i8, i8* %9, align 1
  %101 = load i8*, i8** %6, align 8
  store i8 %100, i8* %101, align 1
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.variable*, %struct.variable** %8, align 8
  %105 = getelementptr inbounds %struct.variable, %struct.variable* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.variable*, %struct.variable** %8, align 8
  %111 = getelementptr inbounds %struct.variable, %struct.variable* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.variable* @find_struct_member(i8* %102, i8* %103, i32 %109, i32 %112)
  store %struct.variable* %113, %struct.variable** %4, align 8
  br label %170

114:                                              ; preds = %75
  %115 = load %struct.variable*, %struct.variable** %8, align 8
  %116 = getelementptr inbounds %struct.variable, %struct.variable* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ECPGt_array, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load i32, i32* @PARSE_ERROR, align 4
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @mmfatal(i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %122, %114
  %127 = load %struct.variable*, %struct.variable** %8, align 8
  %128 = getelementptr inbounds %struct.variable, %struct.variable* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ECPGt_struct, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %126
  %138 = load %struct.variable*, %struct.variable** %8, align 8
  %139 = getelementptr inbounds %struct.variable, %struct.variable* %138, i32 0, i32 1
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @ECPGt_union, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load i32, i32* @PARSE_ERROR, align 4
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @mmfatal(i32 %149, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %148, %137, %126
  %153 = load i8, i8* %9, align 1
  %154 = load i8*, i8** %6, align 8
  store i8 %153, i8* %154, align 1
  %155 = load i8*, i8** %5, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = load %struct.variable*, %struct.variable** %8, align 8
  %158 = getelementptr inbounds %struct.variable, %struct.variable* %157, i32 0, i32 1
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.variable*, %struct.variable** %8, align 8
  %167 = getelementptr inbounds %struct.variable, %struct.variable* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call %struct.variable* @find_struct_member(i8* %155, i8* %156, i32 %165, i32 %168)
  store %struct.variable* %169, %struct.variable** %4, align 8
  br label %170

170:                                              ; preds = %152, %99, %56
  %171 = load %struct.variable*, %struct.variable** %4, align 8
  ret %struct.variable* %171
}

declare dso_local %struct.variable* @find_variable(i8*) #1

declare dso_local i32 @mmfatal(i32, i8*, i8*) #1

declare dso_local %struct.variable* @find_struct_member(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
