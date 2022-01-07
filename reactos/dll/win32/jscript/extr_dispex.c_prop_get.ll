; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_prop_get.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_prop_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__*, i32, %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_19__*, i32, i8**)* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__, i8*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32*, i32 (i32, %struct.TYPE_19__*, i8**)* }

@PROP_PROTREF = common dso_local global i32 0, align 4
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"type %d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"fail %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s ret %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, i8**)* @prop_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_get(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %8, align 8
  br label %12

12:                                               ; preds = %18, %3
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PROP_PROTREF, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %8, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i64 %29
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %6, align 8
  br label %12

31:                                               ; preds = %12
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %149 [
    i32 130, label %35
    i32 128, label %106
    i32 131, label %113
    i32 129, label %136
  ]

35:                                               ; preds = %31
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  %41 = load i32 (i32, %struct.TYPE_19__*, i8**)*, i32 (i32, %struct.TYPE_19__*, i8**)** %40, align 8
  %42 = icmp ne i32 (i32, %struct.TYPE_19__*, i8**)* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = load i32 (i32, %struct.TYPE_19__*, i8**)*, i32 (i32, %struct.TYPE_19__*, i8**)** %48, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = load i8**, i8*** %7, align 8
  %55 = call i32 %49(i32 %52, %struct.TYPE_19__* %53, i8** %54)
  store i32 %55, i32* %9, align 4
  br label %105

56:                                               ; preds = %35
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @create_builtin_function(i32 %68, i32* %74, i32 %80, i32* null, i32 %86, i32* null, %struct.TYPE_19__** %10)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @FAILED(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %56
  br label %155

92:                                               ; preds = %56
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  store i32 128, i32* %94, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %96 = call i8* @jsval_obj(%struct.TYPE_19__* %95)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 3
  store i8* %96, i8** %99, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %101 = call i32 @jsdisp_addref(%struct.TYPE_19__* %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %103 = call i8* @jsval_obj(%struct.TYPE_19__* %102)
  %104 = load i8**, i8*** %7, align 8
  store i8* %103, i8** %104, align 8
  br label %105

105:                                              ; preds = %92, %43
  br label %155

106:                                              ; preds = %31
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %7, align 8
  %112 = call i32 @jsval_copy(i8* %110, i8** %111)
  store i32 %112, i32* %9, align 4
  br label %155

113:                                              ; preds = %31
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %113
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = call i32 @to_disp(%struct.TYPE_19__* %126)
  %128 = load i32, i32* @DISPATCH_METHOD, align 4
  %129 = load i8**, i8*** %7, align 8
  %130 = call i32 @jsdisp_call_value(i32 %125, i32 %127, i32 %128, i32 0, i32* null, i8** %129)
  store i32 %130, i32* %9, align 4
  br label %135

131:                                              ; preds = %113
  %132 = call i8* (...) @jsval_undefined()
  %133 = load i8**, i8*** %7, align 8
  store i8* %132, i8** %133, align 8
  %134 = load i32, i32* @S_OK, align 4
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %131, %120
  br label %155

136:                                              ; preds = %31
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i32 (%struct.TYPE_19__*, i32, i8**)*, i32 (%struct.TYPE_19__*, i32, i8**)** %140, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i8**, i8*** %7, align 8
  %148 = call i32 %141(%struct.TYPE_19__* %142, i32 %146, i8** %147)
  store i32 %148, i32* %9, align 4
  br label %155

149:                                              ; preds = %31
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @E_FAIL, align 4
  store i32 %154, i32* %4, align 4
  br label %173

155:                                              ; preds = %136, %135, %106, %105, %91
  %156 = load i32, i32* %9, align 4
  %157 = call i64 @FAILED(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32, i32* %9, align 4
  %161 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %4, align 4
  br label %173

163:                                              ; preds = %155
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @debugstr_w(i32 %166)
  %168 = load i8**, i8*** %7, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @debugstr_jsval(i8* %169)
  %171 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %167, i32 %170)
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %163, %159, %149
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @create_builtin_function(i32, i32*, i32, i32*, i32, i32*, %struct.TYPE_19__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i8* @jsval_obj(%struct.TYPE_19__*) #1

declare dso_local i32 @jsdisp_addref(%struct.TYPE_19__*) #1

declare dso_local i32 @jsval_copy(i8*, i8**) #1

declare dso_local i32 @jsdisp_call_value(i32, i32, i32, i32, i32*, i8**) #1

declare dso_local i32 @to_disp(%struct.TYPE_19__*) #1

declare dso_local i8* @jsval_undefined(...) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @debugstr_jsval(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
