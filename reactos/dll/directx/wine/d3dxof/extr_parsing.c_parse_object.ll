; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, i32*, %struct.TYPE_10__*, %struct.TYPE_9__**, i32, i32 }
%struct.TYPE_11__ = type { i32, i64*, i32, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TOKEN_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown template %s\0A\00", align 1
@TOKEN_OBRACE = common dso_local global i64 0, align 8
@TOKEN_GUID = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@TOKEN_CBRACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_object(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 6
  store i32 %7, i32* %11, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 4
  store i32 %16, i32* %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  store i32 %23, i32* %27, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = call i64 @get_TOKEN(%struct.TYPE_12__* %28)
  %30 = load i64, i64* @TOKEN_NAME, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %178

34:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %88, %34
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %36, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %35
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to i8*
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @_strnicmp(i8* %47, i32 %56, i32 -1)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %43
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %65
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %69, i64 %72
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = call i32 @memcpy(i32* %77, i32* %85, i32 16)
  br label %91

87:                                               ; preds = %43
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %4, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %4, align 8
  br label %35

91:                                               ; preds = %59, %35
  %92 = load i64, i64* %4, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %92, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %2, align 4
  br label %178

106:                                              ; preds = %91
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = call i64 @check_TOKEN(%struct.TYPE_12__* %107)
  %109 = load i64, i64* @TOKEN_NAME, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = call i64 @get_TOKEN(%struct.TYPE_12__* %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = bitcast i32* %121 to i8*
  %123 = call i32 @strcpy(i64* %118, i8* %122)
  br label %131

124:                                              ; preds = %106
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 0
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %124, %111
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %133 = call i64 @get_TOKEN(%struct.TYPE_12__* %132)
  %134 = load i64, i64* @TOKEN_OBRACE, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %2, align 4
  br label %178

138:                                              ; preds = %131
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %140 = call i64 @check_TOKEN(%struct.TYPE_12__* %139)
  %141 = load i64, i64* @TOKEN_GUID, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = call i64 @get_TOKEN(%struct.TYPE_12__* %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @memcpy(i32* %149, i32* %152, i32 16)
  br label %160

154:                                              ; preds = %138
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = call i32 @memset(i32* %158, i32 0, i32 16)
  br label %160

160:                                              ; preds = %154, %143
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %162 = load i32, i32* @TRUE, align 4
  %163 = call i32 @parse_object_parts(%struct.TYPE_12__* %161, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %160
  %166 = load i32, i32* @FALSE, align 4
  store i32 %166, i32* %2, align 4
  br label %178

167:                                              ; preds = %160
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %169 = call i64 @get_TOKEN(%struct.TYPE_12__* %168)
  %170 = load i64, i64* @TOKEN_CBRACE, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %2, align 4
  br label %178

174:                                              ; preds = %167
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %176 = call i64 @check_TOKEN(%struct.TYPE_12__* %175)
  %177 = load i32, i32* @TRUE, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %174, %172, %165, %136, %99, %32
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i64 @get_TOKEN(%struct.TYPE_12__*) #1

declare dso_local i32 @_strnicmp(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ERR(i8*, i8*) #1

declare dso_local i64 @check_TOKEN(%struct.TYPE_12__*) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @parse_object_parts(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
