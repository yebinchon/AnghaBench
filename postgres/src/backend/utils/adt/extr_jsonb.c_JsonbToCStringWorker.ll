; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_JsonbToCStringWorker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb.c_JsonbToCStringWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8* }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@WJB_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@WJB_VALUE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"unknown jsonb iterator token type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i32*, i32, i32)* @JsonbToCStringWorker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @JsonbToCStringWorker(%struct.TYPE_16__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %19 = load i32, i32* @WJB_DONE, align 4
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 2
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = icmp eq %struct.TYPE_16__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call %struct.TYPE_16__* (...) @makeStringInfo()
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %5, align 8
  br label %28

28:                                               ; preds = %26, %4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  br label %35

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 64, %34 ]
  %37 = call i32 @enlargeStringInfo(%struct.TYPE_16__* %29, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @JsonbIteratorInit(i32* %38)
  store i32* %39, i32** %10, align 8
  br label %40

40:                                               ; preds = %184, %35
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = call i32 @JsonbIteratorNext(i32** %10, %struct.TYPE_17__* %11, i32 0)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @WJB_DONE, align 4
  %46 = icmp ne i32 %44, %45
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ true, %40 ], [ %46, %43 ]
  br i1 %48, label %49, label %187

49:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  %50 = load i32, i32* %12, align 4
  switch i32 %50, label %181 [
    i32 133, label %51
    i32 132, label %83
    i32 128, label %107
    i32 131, label %141
    i32 130, label %159
    i32 129, label %172
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @appendBinaryStringInfo(%struct.TYPE_16__* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ false, %64 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @add_indent(%struct.TYPE_16__* %65, i32 %74, i32 %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = call i32 @appendStringInfoCharMacro(%struct.TYPE_16__* %77, i8 signext 91)
  br label %80

79:                                               ; preds = %58
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %79, %72
  store i32 1, i32* %9, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %184

83:                                               ; preds = %49
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @appendBinaryStringInfo(%struct.TYPE_16__* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @add_indent(%struct.TYPE_16__* %91, i32 %100, i32 %101)
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = call i32 @appendStringInfoCharMacro(%struct.TYPE_16__* %103, i8 signext 123)
  store i32 1, i32* %9, align 4
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %184

107:                                              ; preds = %49
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @appendBinaryStringInfo(%struct.TYPE_16__* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  store i32 1, i32* %9, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @add_indent(%struct.TYPE_16__* %115, i32 %116, i32 %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = call i32 @jsonb_put_escaped_value(%struct.TYPE_16__* %119, %struct.TYPE_17__* %11)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = call i32 @appendBinaryStringInfo(%struct.TYPE_16__* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %123 = call i32 @JsonbIteratorNext(i32** %10, %struct.TYPE_17__* %11, i32 0)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @WJB_VALUE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = call i32 @jsonb_put_escaped_value(%struct.TYPE_16__* %128, %struct.TYPE_17__* %11)
  br label %140

130:                                              ; preds = %114
  %131 = load i32, i32* %12, align 4
  %132 = icmp eq i32 %131, 132
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %134, 133
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi i1 [ true, %130 ], [ %135, %133 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @Assert(i32 %138)
  store i32 1, i32* %14, align 4
  br label %140

140:                                              ; preds = %136, %127
  br label %184

141:                                              ; preds = %49
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %146 = load i32, i32* %15, align 4
  %147 = call i32 @appendBinaryStringInfo(%struct.TYPE_16__* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %141
  store i32 0, i32* %9, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @add_indent(%struct.TYPE_16__* %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %148
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %158 = call i32 @jsonb_put_escaped_value(%struct.TYPE_16__* %157, %struct.TYPE_17__* %11)
  br label %184

159:                                              ; preds = %49
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %17, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @add_indent(%struct.TYPE_16__* %165, i32 %166, i32 %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %170 = call i32 @appendStringInfoCharMacro(%struct.TYPE_16__* %169, i8 signext 93)
  br label %171

171:                                              ; preds = %164, %159
  store i32 0, i32* %9, align 4
  br label %184

172:                                              ; preds = %49
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %13, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @add_indent(%struct.TYPE_16__* %175, i32 %176, i32 %177)
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %180 = call i32 @appendStringInfoCharMacro(%struct.TYPE_16__* %179, i8 signext 125)
  store i32 0, i32* %9, align 4
  br label %184

181:                                              ; preds = %49
  %182 = load i32, i32* @ERROR, align 4
  %183 = call i32 @elog(i32 %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %172, %171, %156, %140, %98, %80
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* %14, align 4
  store i32 %186, i32* %18, align 4
  br label %40

187:                                              ; preds = %47
  %188 = load i32, i32* %13, align 4
  %189 = icmp eq i32 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @Assert(i32 %190)
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  ret i8* %194
}

declare dso_local %struct.TYPE_16__* @makeStringInfo(...) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @JsonbIteratorInit(i32*) #1

declare dso_local i32 @JsonbIteratorNext(i32**, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @add_indent(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @appendStringInfoCharMacro(%struct.TYPE_16__*, i8 signext) #1

declare dso_local i32 @jsonb_put_escaped_value(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
