; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_convertJsonbObject.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_convertJsonbObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }

@JB_FOBJECT = common dso_local global i32 0, align 4
@JENTRY_OFFLENMASK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"total size of jsonb object elements exceeds the maximum of %u bytes\00", align 1
@JB_OFFSET_STRIDE = common dso_local global i32 0, align 4
@JENTRY_TYPEMASK = common dso_local global i32 0, align 4
@JENTRY_HAS_OFF = common dso_local global i32 0, align 4
@JENTRY_ISCONTAINER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32*, %struct.TYPE_17__*, i32)* @convertJsonbObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convertJsonbObject(%struct.TYPE_16__* %0, i32* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = call i32 @padBufferToInt(%struct.TYPE_16__* %29)
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @JB_FOBJECT, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = bitcast i32* %13 to i8*
  %36 = call i32 @appendToBuffer(%struct.TYPE_16__* %34, i8* %35, i32 4)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = mul i64 %40, 2
  %42 = trunc i64 %41 to i32
  %43 = call i32 @reserveFromBuffer(%struct.TYPE_16__* %37, i32 %42)
  store i32 %43, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %98, %4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %101

48:                                               ; preds = %44
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i64 %55
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %15, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = call i32 @convertJsonbScalar(%struct.TYPE_16__* %57, i32* %17, i32* %59)
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @JBE_OFFLENFLD(i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @JENTRY_OFFLENMASK, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %48
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %72 = call i32 @errcode(i32 %71)
  %73 = load i32, i32* @JENTRY_OFFLENMASK, align 4
  %74 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = call i32 @ereport(i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %69, %48
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @JB_OFFSET_STRIDE, align 4
  %79 = srem i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @JENTRY_TYPEMASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @JENTRY_HAS_OFF, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %17, align 4
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = bitcast i32* %17 to i8*
  %93 = call i32 @copyToBuffer(%struct.TYPE_16__* %90, i32 %91, i8* %92, i32 4)
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, 4
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %44

101:                                              ; preds = %44
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %160, %101
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %163

106:                                              ; preds = %102
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i64 %113
  store %struct.TYPE_18__* %114, %struct.TYPE_18__** %18, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i32 @convertJsonbValue(%struct.TYPE_16__* %115, i32* %20, i32* %117, i32 %119)
  %121 = load i32, i32* %20, align 4
  %122 = call i32 @JBE_OFFLENFLD(i32 %121)
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @JENTRY_OFFLENMASK, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %106
  %130 = load i32, i32* @ERROR, align 4
  %131 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %132 = call i32 @errcode(i32 %131)
  %133 = load i32, i32* @JENTRY_OFFLENMASK, align 4
  %134 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %133)
  %135 = call i32 @ereport(i32 %130, i32 %134)
  br label %136

136:                                              ; preds = %129, %106
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* @JB_OFFSET_STRIDE, align 4
  %141 = srem i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* @JENTRY_TYPEMASK, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* %12, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @JENTRY_HAS_OFF, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %20, align 4
  br label %151

151:                                              ; preds = %143, %136
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %153 = load i32, i32* %10, align 4
  %154 = bitcast i32* %20 to i8*
  %155 = call i32 @copyToBuffer(%struct.TYPE_16__* %152, i32 %153, i8* %154, i32 4)
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 %157, 4
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %102

163:                                              ; preds = %102
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %9, align 4
  %168 = sub nsw i32 %166, %167
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @JENTRY_OFFLENMASK, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %163
  %173 = load i32, i32* @ERROR, align 4
  %174 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %175 = call i32 @errcode(i32 %174)
  %176 = load i32, i32* @JENTRY_OFFLENMASK, align 4
  %177 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = call i32 @ereport(i32 %173, i32 %177)
  br label %179

179:                                              ; preds = %172, %163
  %180 = load i32, i32* @JENTRY_ISCONTAINER, align 4
  %181 = load i32, i32* %12, align 4
  %182 = or i32 %180, %181
  %183 = load i32*, i32** %6, align 8
  store i32 %182, i32* %183, align 4
  ret void
}

declare dso_local i32 @padBufferToInt(%struct.TYPE_16__*) #1

declare dso_local i32 @appendToBuffer(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @reserveFromBuffer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @convertJsonbScalar(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @JBE_OFFLENFLD(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @copyToBuffer(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i32 @convertJsonbValue(%struct.TYPE_16__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
