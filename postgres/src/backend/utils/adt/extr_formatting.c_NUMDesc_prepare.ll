; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_NUMDesc_prepare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_formatting.c_NUMDesc_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@NODE_TYPE_ACTION = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"\22EEEE\22 must be the last pattern used\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\229\22 must be ahead of \22PR\22\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\220\22 must be ahead of \22PR\22\00", align 1
@NUM_F_ZERO = common dso_local global i32 0, align 4
@NUM_F_BLANK = common dso_local global i32 0, align 4
@NUM_F_LDECIMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"multiple decimal points\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"cannot use \22V\22 and decimal point together\00", align 1
@NUM_F_DECIMAL = common dso_local global i32 0, align 4
@NUM_F_FILLMODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"cannot use \22S\22 twice\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"cannot use \22S\22 and \22PL\22/\22MI\22/\22SG\22/\22PR\22 together\00", align 1
@NUM_LSIGN_PRE = common dso_local global i32 0, align 4
@NUM_F_LSIGN = common dso_local global i32 0, align 4
@NUM_LSIGN_NONE = common dso_local global i32 0, align 4
@NUM_LSIGN_POST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"cannot use \22S\22 and \22MI\22 together\00", align 1
@NUM_F_MINUS = common dso_local global i32 0, align 4
@NUM_F_MINUS_POST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"cannot use \22S\22 and \22PL\22 together\00", align 1
@NUM_F_PLUS = common dso_local global i32 0, align 4
@NUM_F_PLUS_POST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"cannot use \22S\22 and \22SG\22 together\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"cannot use \22PR\22 and \22S\22/\22PL\22/\22MI\22/\22SG\22 together\00", align 1
@NUM_F_BRACKET = common dso_local global i32 0, align 4
@NUM_F_ROMAN = common dso_local global i32 0, align 4
@NUM_F_MULTI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"cannot use \22EEEE\22 twice\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\22EEEE\22 is incompatible with other formats\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"\22EEEE\22 may only be used together with digit and decimal point patterns.\00", align 1
@NUM_F_EEEE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_19__*)* @NUMDesc_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NUMDesc_prepare(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NODE_TYPE_ACTION, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %428

11:                                               ; preds = %2
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = call i64 @IS_EEEE(%struct.TYPE_18__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 139
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %15, %11
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %428 [
    i32 143, label %34
    i32 144, label %68
    i32 142, label %123
    i32 141, label %144
    i32 140, label %152
    i32 138, label %178
    i32 131, label %184
    i32 135, label %251
    i32 134, label %277
    i32 130, label %303
    i32 133, label %324
    i32 128, label %348
    i32 132, label %348
    i32 136, label %354
    i32 137, label %354
    i32 129, label %357
    i32 139, label %373
  ]

34:                                               ; preds = %28
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = call i32 @IS_BRACKET(%struct.TYPE_18__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = call i32 @IS_MULTI(%struct.TYPE_18__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %428

53:                                               ; preds = %44
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = call i32 @IS_DECIMAL(%struct.TYPE_18__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  br label %67

62:                                               ; preds = %53
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %62, %57
  br label %428

68:                                               ; preds = %28
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = call i32 @IS_BRACKET(%struct.TYPE_18__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %77 = call i32 @ereport(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %68
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = call i32 @IS_ZERO(%struct.TYPE_18__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %78
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = call i32 @IS_DECIMAL(%struct.TYPE_18__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @NUM_F_ZERO, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = trunc i64 %95 to i32
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %86, %82, %78
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = call i32 @IS_DECIMAL(%struct.TYPE_18__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %105, align 8
  br label %113

108:                                              ; preds = %99
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 6
  store i64 %120, i64* %122, align 8
  br label %428

123:                                              ; preds = %28
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = call i32 @IS_ZERO(%struct.TYPE_18__* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* @NUM_F_BLANK, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %133, %128, %123
  br label %428

144:                                              ; preds = %28
  %145 = load i32, i32* @NUM_F_LDECIMAL, align 4
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %28, %144
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %154 = call i32 @IS_DECIMAL(%struct.TYPE_18__* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i32, i32* @ERROR, align 4
  %158 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %159 = call i32 @errcode(i32 %158)
  %160 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %161 = call i32 @ereport(i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %156, %152
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = call i32 @IS_MULTI(%struct.TYPE_18__* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load i32, i32* @ERROR, align 4
  %168 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %169 = call i32 @errcode(i32 %168)
  %170 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %171 = call i32 @ereport(i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %166, %162
  %173 = load i32, i32* @NUM_F_DECIMAL, align 4
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %428

178:                                              ; preds = %28
  %179 = load i32, i32* @NUM_F_FILLMODE, align 4
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %428

184:                                              ; preds = %28
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %186 = call i32 @IS_LSIGN(%struct.TYPE_18__* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = load i32, i32* @ERROR, align 4
  %190 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %191 = call i32 @errcode(i32 %190)
  %192 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %193 = call i32 @ereport(i32 %189, i32 %192)
  br label %194

194:                                              ; preds = %188, %184
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %196 = call i32 @IS_PLUS(%struct.TYPE_18__* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %194
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %200 = call i32 @IS_MINUS(%struct.TYPE_18__* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %204 = call i32 @IS_BRACKET(%struct.TYPE_18__* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %202, %198, %194
  %207 = load i32, i32* @ERROR, align 4
  %208 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %209 = call i32 @errcode(i32 %208)
  %210 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %211 = call i32 @ereport(i32 %207, i32 %210)
  br label %212

212:                                              ; preds = %206, %202
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %214 = call i32 @IS_DECIMAL(%struct.TYPE_18__* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %232, label %216

216:                                              ; preds = %212
  %217 = load i32, i32* @NUM_LSIGN_PRE, align 4
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 4
  store i64 %222, i64* %224, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  store i32 1, i32* %226, align 8
  %227 = load i32, i32* @NUM_F_LSIGN, align 4
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  br label %250

232:                                              ; preds = %212
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @NUM_LSIGN_NONE, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %249

238:                                              ; preds = %232
  %239 = load i32, i32* @NUM_LSIGN_POST, align 4
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  store i32 1, i32* %243, align 8
  %244 = load i32, i32* @NUM_F_LSIGN, align 4
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %238, %232
  br label %250

250:                                              ; preds = %249, %216
  br label %428

251:                                              ; preds = %28
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %253 = call i32 @IS_LSIGN(%struct.TYPE_18__* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = load i32, i32* @ERROR, align 4
  %257 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %258 = call i32 @errcode(i32 %257)
  %259 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %260 = call i32 @ereport(i32 %256, i32 %259)
  br label %261

261:                                              ; preds = %255, %251
  %262 = load i32, i32* @NUM_F_MINUS, align 4
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %268 = call i32 @IS_DECIMAL(%struct.TYPE_18__* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %261
  %271 = load i32, i32* @NUM_F_MINUS_POST, align 4
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %270, %261
  br label %428

277:                                              ; preds = %28
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %279 = call i32 @IS_LSIGN(%struct.TYPE_18__* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = load i32, i32* @ERROR, align 4
  %283 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %284 = call i32 @errcode(i32 %283)
  %285 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %286 = call i32 @ereport(i32 %282, i32 %285)
  br label %287

287:                                              ; preds = %281, %277
  %288 = load i32, i32* @NUM_F_PLUS, align 4
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %294 = call i32 @IS_DECIMAL(%struct.TYPE_18__* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %287
  %297 = load i32, i32* @NUM_F_PLUS_POST, align 4
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %296, %287
  br label %428

303:                                              ; preds = %28
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %305 = call i32 @IS_LSIGN(%struct.TYPE_18__* %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %303
  %308 = load i32, i32* @ERROR, align 4
  %309 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %310 = call i32 @errcode(i32 %309)
  %311 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %312 = call i32 @ereport(i32 %308, i32 %311)
  br label %313

313:                                              ; preds = %307, %303
  %314 = load i32, i32* @NUM_F_MINUS, align 4
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 4
  %319 = load i32, i32* @NUM_F_PLUS, align 4
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 4
  br label %428

324:                                              ; preds = %28
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %326 = call i32 @IS_LSIGN(%struct.TYPE_18__* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %336, label %328

328:                                              ; preds = %324
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %330 = call i32 @IS_PLUS(%struct.TYPE_18__* %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %336, label %332

332:                                              ; preds = %328
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %334 = call i32 @IS_MINUS(%struct.TYPE_18__* %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %332, %328, %324
  %337 = load i32, i32* @ERROR, align 4
  %338 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %339 = call i32 @errcode(i32 %338)
  %340 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %341 = call i32 @ereport(i32 %337, i32 %340)
  br label %342

342:                                              ; preds = %336, %332
  %343 = load i32, i32* @NUM_F_BRACKET, align 4
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 4
  br label %428

348:                                              ; preds = %28, %28
  %349 = load i32, i32* @NUM_F_ROMAN, align 4
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = or i32 %352, %349
  store i32 %353, i32* %351, align 4
  br label %428

354:                                              ; preds = %28, %28
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 0
  store i32 1, i32* %356, align 8
  br label %428

357:                                              ; preds = %28
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %359 = call i32 @IS_DECIMAL(%struct.TYPE_18__* %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %357
  %362 = load i32, i32* @ERROR, align 4
  %363 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %364 = call i32 @errcode(i32 %363)
  %365 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %366 = call i32 @ereport(i32 %362, i32 %365)
  br label %367

367:                                              ; preds = %361, %357
  %368 = load i32, i32* @NUM_F_MULTI, align 4
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 4
  br label %428

373:                                              ; preds = %28
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %375 = call i64 @IS_EEEE(%struct.TYPE_18__* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %373
  %378 = load i32, i32* @ERROR, align 4
  %379 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %380 = call i32 @errcode(i32 %379)
  %381 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %382 = call i32 @ereport(i32 %378, i32 %381)
  br label %383

383:                                              ; preds = %377, %373
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %385 = call i32 @IS_BLANK(%struct.TYPE_18__* %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %415, label %387

387:                                              ; preds = %383
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %389 = call i32 @IS_FILLMODE(%struct.TYPE_18__* %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %415, label %391

391:                                              ; preds = %387
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %393 = call i32 @IS_LSIGN(%struct.TYPE_18__* %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %415, label %395

395:                                              ; preds = %391
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %397 = call i32 @IS_BRACKET(%struct.TYPE_18__* %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %415, label %399

399:                                              ; preds = %395
  %400 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %401 = call i32 @IS_MINUS(%struct.TYPE_18__* %400)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %415, label %403

403:                                              ; preds = %399
  %404 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %405 = call i32 @IS_PLUS(%struct.TYPE_18__* %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %415, label %407

407:                                              ; preds = %403
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %409 = call i32 @IS_ROMAN(%struct.TYPE_18__* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %415, label %411

411:                                              ; preds = %407
  %412 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %413 = call i32 @IS_MULTI(%struct.TYPE_18__* %412)
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %422

415:                                              ; preds = %411, %407, %403, %399, %395, %391, %387, %383
  %416 = load i32, i32* @ERROR, align 4
  %417 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %418 = call i32 @errcode(i32 %417)
  %419 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %420 = call i32 @errdetail(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0))
  %421 = call i32 @ereport(i32 %416, i32 %420)
  br label %422

422:                                              ; preds = %415, %411
  %423 = load i32, i32* @NUM_F_EEEE, align 4
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = or i32 %426, %423
  store i32 %427, i32* %425, align 4
  br label %428

428:                                              ; preds = %10, %28, %422, %367, %354, %348, %342, %313, %302, %276, %250, %178, %172, %143, %113, %67, %48
  ret void
}

declare dso_local i64 @IS_EEEE(%struct.TYPE_18__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @IS_BRACKET(%struct.TYPE_18__*) #1

declare dso_local i32 @IS_MULTI(%struct.TYPE_18__*) #1

declare dso_local i32 @IS_DECIMAL(%struct.TYPE_18__*) #1

declare dso_local i32 @IS_ZERO(%struct.TYPE_18__*) #1

declare dso_local i32 @IS_LSIGN(%struct.TYPE_18__*) #1

declare dso_local i32 @IS_PLUS(%struct.TYPE_18__*) #1

declare dso_local i32 @IS_MINUS(%struct.TYPE_18__*) #1

declare dso_local i32 @IS_BLANK(%struct.TYPE_18__*) #1

declare dso_local i32 @IS_FILLMODE(%struct.TYPE_18__*) #1

declare dso_local i32 @IS_ROMAN(%struct.TYPE_18__*) #1

declare dso_local i32 @errdetail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
