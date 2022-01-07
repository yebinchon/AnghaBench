; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_parseRelOptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_parseRelOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }

@need_initialization = common dso_local global i64 0, align 8
@relOpts = common dso_local global %struct.TYPE_7__** null, align 8
@TEXTOID = common dso_local global i32 0, align 4
@VARHDRSZ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unrecognized parameter \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, i32, i32, i32*)* @parseRelOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @parseRelOptions(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i64, i64* @need_initialization, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i32 (...) @initialize_reloptions()
  br label %26

26:                                               ; preds = %24, %4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %49, %26
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @relOpts, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %28, i64 %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @relOpts, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %35, i64 %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %45, %34
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %27

52:                                               ; preds = %27
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 16
  %59 = trunc i64 %58 to i32
  %60 = call %struct.TYPE_6__* @palloc(i32 %59)
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %98, %55
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @relOpts, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %62, i64 %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %101

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @relOpts, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %69, i64 %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %68
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @relOpts, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %80, i64 %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %79, %68
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %61

101:                                              ; preds = %61
  br label %102

102:                                              ; preds = %101, %52
  %103 = load i32, i32* %5, align 4
  %104 = call i8* @DatumGetPointer(i32 %103)
  %105 = call i64 @PointerIsValid(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %225

107:                                              ; preds = %102
  %108 = load i32, i32* %5, align 4
  %109 = call i32* @DatumGetArrayTypeP(i32 %108)
  store i32* %109, i32** %13, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* @TEXTOID, align 4
  %112 = call i32 @deconstruct_array(i32* %110, i32 %111, i32 -1, i32 0, i8 signext 105, i32** %14, i32* null, i32* %15)
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %210, %107
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %213

117:                                              ; preds = %113
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @VARDATA(i32 %122)
  store i8* %123, i8** %16, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @VARSIZE(i32 %128)
  %130 = load i32, i32* @VARHDRSZ, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %132

132:                                              ; preds = %179, %117
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %182

136:                                              ; preds = %132
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %19, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %19, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %178

148:                                              ; preds = %136
  %149 = load i8*, i8** %16, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 61
  br i1 %155, label %156, label %178

156:                                              ; preds = %148
  %157 = load i8*, i8** %16, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %159 = load i32, i32* %18, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %19, align 4
  %167 = call i64 @strncmp(i8* %157, i32 %165, i32 %166)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %156
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = load i8*, i8** %16, align 8
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @parse_one_reloption(%struct.TYPE_6__* %173, i8* %174, i32 %175, i32 %176)
  br label %182

178:                                              ; preds = %156, %148, %136
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %18, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %18, align 4
  br label %132

182:                                              ; preds = %169, %132
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp sge i32 %183, %184
  br i1 %185, label %186, label %209

186:                                              ; preds = %182
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %209

189:                                              ; preds = %186
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @TextDatumGetCString(i32 %194)
  store i8* %195, i8** %20, align 8
  %196 = load i8*, i8** %20, align 8
  %197 = call i8* @strchr(i8* %196, i8 signext 61)
  store i8* %197, i8** %21, align 8
  %198 = load i8*, i8** %21, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %189
  %201 = load i8*, i8** %21, align 8
  store i8 0, i8* %201, align 1
  br label %202

202:                                              ; preds = %200, %189
  %203 = load i32, i32* @ERROR, align 4
  %204 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %205 = call i32 @errcode(i32 %204)
  %206 = load i8*, i8** %20, align 8
  %207 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %206)
  %208 = call i32 @ereport(i32 %203, i32 %207)
  br label %209

209:                                              ; preds = %202, %186, %182
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %11, align 4
  br label %113

213:                                              ; preds = %113
  %214 = load i32*, i32** %14, align 8
  %215 = call i32 @pfree(i32* %214)
  %216 = load i32*, i32** %13, align 8
  %217 = bitcast i32* %216 to i8*
  %218 = load i32, i32* %5, align 4
  %219 = call i8* @DatumGetPointer(i32 %218)
  %220 = icmp ne i8* %217, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %213
  %222 = load i32*, i32** %13, align 8
  %223 = call i32 @pfree(i32* %222)
  br label %224

224:                                              ; preds = %221, %213
  br label %225

225:                                              ; preds = %224, %102
  %226 = load i32, i32* %10, align 4
  %227 = load i32*, i32** %8, align 8
  store i32 %226, i32* %227, align 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %228
}

declare dso_local i32 @initialize_reloptions(...) #1

declare dso_local %struct.TYPE_6__* @palloc(i32) #1

declare dso_local i64 @PointerIsValid(i8*) #1

declare dso_local i8* @DatumGetPointer(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32*, i32*) #1

declare dso_local i8* @VARDATA(i32) #1

declare dso_local i32 @VARSIZE(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @parse_one_reloption(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
