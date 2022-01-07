; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/json/extr_json.c_json_walk_array.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/json/extr_json.c_json_walk_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i32 }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i64, i32 (%struct.TYPE_17__*)*, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64 }

@JSON_ARRAY = common dso_local global i32 0, align 4
@JSON_NAME_LEN = common dso_local global i32 0, align 4
@JSON_FULLNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"JSON: JSON walk_array ignoring element with name:%s fullname:%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s[%lu]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_walk_array(i8* %0, %struct.TYPE_16__* %1, i64 %2, i64 %3, %struct.TYPE_17__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %16, i64 %21
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %12, align 1
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %40 = call i32 @memcpy(%struct.TYPE_17__* %11, %struct.TYPE_17__* %39, i32 56)
  %41 = load i32, i32* @JSON_ARRAY, align 4
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 6
  store i32 %41, i32* %42, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 4
  store i32 (%struct.TYPE_17__*)* null, i32 (%struct.TYPE_17__*)** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 0, i8* %56, align 1
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 4
  %59 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %58, align 8
  %60 = icmp ne i32 (%struct.TYPE_17__*)* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %5
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 4
  %64 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %63, align 8
  %65 = call i32 %64(%struct.TYPE_17__* %11)
  br label %66

66:                                               ; preds = %61, %5
  %67 = load i8, i8* %12, align 1
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  store i8 %67, i8* %74, align 1
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %14, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  store i64 0, i64* %13, align 8
  br label %83

83:                                               ; preds = %168, %66
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %15, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %171

87:                                               ; preds = %83
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 3
  store i64 %88, i64* %89, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = load i32, i32* @JSON_NAME_LEN, align 4
  %95 = sub nsw i32 %94, 24
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %87
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = load i32, i32* @JSON_FULLNAME_LEN, align 4
  %103 = sub nsw i32 %102, 24
  %104 = icmp sgt i32 %101, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %97, %87
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %108, i8* %111)
  br label %168

113:                                              ; preds = %97
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @JSON_NAME_LEN, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = call i32 @snprintfz(i8* %115, i32 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %119, i64 %120)
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @JSON_FULLNAME_LEN, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = load i64, i64* %13, align 8
  %129 = call i32 @snprintfz(i8* %123, i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %127, i64 %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  switch i32 %134, label %167 [
    i32 129, label %135
    i32 130, label %142
    i32 131, label %151
    i32 128, label %160
  ]

135:                                              ; preds = %113
  %136 = load i8*, i8** %6, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = load i64, i64* %9, align 8
  %139 = call i64 @json_walk_primitive(i8* %136, %struct.TYPE_16__* %137, i64 %138, %struct.TYPE_17__* %11)
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %9, align 8
  br label %167

142:                                              ; preds = %113
  %143 = load i8*, i8** %6, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = add i64 %145, 1
  %147 = load i64, i64* %9, align 8
  %148 = call i64 @json_walk_object(i8* %143, %struct.TYPE_16__* %144, i64 %146, i64 %147, %struct.TYPE_17__* %11)
  %149 = load i64, i64* %9, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %9, align 8
  br label %167

151:                                              ; preds = %113
  %152 = load i8*, i8** %6, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = load i64, i64* %8, align 8
  %155 = add i64 %154, 1
  %156 = load i64, i64* %9, align 8
  %157 = call i64 @json_walk_array(i8* %152, %struct.TYPE_16__* %153, i64 %155, i64 %156, %struct.TYPE_17__* %11)
  %158 = load i64, i64* %9, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %9, align 8
  br label %167

160:                                              ; preds = %113
  %161 = load i8*, i8** %6, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %163 = load i64, i64* %9, align 8
  %164 = call i64 @json_walk_string(i8* %161, %struct.TYPE_16__* %162, i64 %163, %struct.TYPE_17__* %11)
  %165 = load i64, i64* %9, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %9, align 8
  br label %167

167:                                              ; preds = %113, %160, %151, %142, %135
  br label %168

168:                                              ; preds = %167, %105
  %169 = load i64, i64* %13, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %13, align 8
  br label %83

171:                                              ; preds = %83
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* %14, align 8
  %174 = sub i64 %172, %173
  ret i64 %174
}

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @info(i8*, i8*, i8*) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, i64) #1

declare dso_local i64 @json_walk_primitive(i8*, %struct.TYPE_16__*, i64, %struct.TYPE_17__*) #1

declare dso_local i64 @json_walk_object(i8*, %struct.TYPE_16__*, i64, i64, %struct.TYPE_17__*) #1

declare dso_local i64 @json_walk_string(i8*, %struct.TYPE_16__*, i64, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
