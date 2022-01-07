; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_CheckValidResultRel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_CheckValidResultRel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_15__*)*, i32*, i32*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot change sequence \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot change TOAST relation \22%s\22\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot insert into view \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [119 x i8] c"To enable inserting into the view, provide an INSTEAD OF INSERT trigger or an unconditional ON INSERT DO INSTEAD rule.\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot update view \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [113 x i8] c"To enable updating the view, provide an INSTEAD OF UPDATE trigger or an unconditional ON UPDATE DO INSTEAD rule.\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"cannot delete from view \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [118 x i8] c"To enable deleting from the view, provide an INSTEAD OF DELETE trigger or an unconditional ON DELETE DO INSTEAD rule.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"unrecognized CmdType: %d\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"cannot change materialized view \22%s\22\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"cannot insert into foreign table \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"foreign table \22%s\22 does not allow inserts\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"cannot update foreign table \22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"foreign table \22%s\22 does not allow updates\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"cannot delete from foreign table \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"foreign table \22%s\22 does not allow deletes\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"cannot change relation \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckValidResultRel(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %229 [
    i32 131, label %19
    i32 132, label %19
    i32 130, label %23
    i32 129, label %31
    i32 128, label %39
    i32 133, label %101
    i32 134, label %113
  ]

19:                                               ; preds = %2, %2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @CheckCmdReplicaIdentity(%struct.TYPE_15__* %20, i64 %21)
  br label %237

23:                                               ; preds = %2
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %27)
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call i32 @ereport(i32 %24, i32 %29)
  br label %237

31:                                               ; preds = %2
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %35)
  %37 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = call i32 @ereport(i32 %32, i32 %37)
  br label %237

39:                                               ; preds = %2
  %40 = load i64, i64* %4, align 8
  switch i64 %40, label %95 [
    i64 136, label %41
    i64 135, label %59
    i64 137, label %77
  ]

41:                                               ; preds = %39
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %53)
  %55 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = call i32 @errhint(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %50, i32 %56)
  br label %58

58:                                               ; preds = %49, %44
  br label %100

59:                                               ; preds = %39
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = icmp ne %struct.TYPE_13__* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* @ERROR, align 4
  %69 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %70 = call i32 @errcode(i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %71)
  %73 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = call i32 @errhint(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.5, i64 0, i64 0))
  %75 = call i32 @ereport(i32 %68, i32 %74)
  br label %76

76:                                               ; preds = %67, %62
  br label %100

77:                                               ; preds = %39
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = icmp ne %struct.TYPE_13__* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %80, %77
  %86 = load i32, i32* @ERROR, align 4
  %87 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %88 = call i32 @errcode(i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %89)
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = call i32 @errhint(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.7, i64 0, i64 0))
  %93 = call i32 @ereport(i32 %86, i32 %92)
  br label %94

94:                                               ; preds = %85, %80
  br label %100

95:                                               ; preds = %39
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i64, i64* %4, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @elog(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95, %94, %76, %58
  br label %237

101:                                              ; preds = %2
  %102 = call i32 (...) @MatViewIncrementalMaintenanceIsEnabled()
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* @ERROR, align 4
  %106 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %107 = call i32 @errcode(i32 %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %108)
  %110 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %109)
  %111 = call i32 @ereport(i32 %105, i32 %110)
  br label %112

112:                                              ; preds = %104, %101
  br label %237

113:                                              ; preds = %2
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  store %struct.TYPE_16__* %116, %struct.TYPE_16__** %7, align 8
  %117 = load i64, i64* %4, align 8
  switch i64 %117, label %223 [
    i64 136, label %118
    i64 135, label %153
    i64 137, label %188
  ]

118:                                              ; preds = %113
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i32, i32* @ERROR, align 4
  %125 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %126 = call i32 @errcode(i32 %125)
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %127)
  %129 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %128)
  %130 = call i32 @ereport(i32 %124, i32 %129)
  br label %131

131:                                              ; preds = %123, %118
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %133, align 8
  %135 = icmp ne i32 (%struct.TYPE_15__*)* %134, null
  br i1 %135, label %136, label %152

136:                                              ; preds = %131
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %138, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %141 = call i32 %139(%struct.TYPE_15__* %140)
  %142 = and i32 %141, undef
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %136
  %145 = load i32, i32* @ERROR, align 4
  %146 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %147 = call i32 @errcode(i32 %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %148)
  %150 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %149)
  %151 = call i32 @ereport(i32 %145, i32 %150)
  br label %152

152:                                              ; preds = %144, %136, %131
  br label %228

153:                                              ; preds = %113
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load i32, i32* @ERROR, align 4
  %160 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %161 = call i32 @errcode(i32 %160)
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %162)
  %164 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %163)
  %165 = call i32 @ereport(i32 %159, i32 %164)
  br label %166

166:                                              ; preds = %158, %153
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %168, align 8
  %170 = icmp ne i32 (%struct.TYPE_15__*)* %169, null
  br i1 %170, label %171, label %187

171:                                              ; preds = %166
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %173, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %176 = call i32 %174(%struct.TYPE_15__* %175)
  %177 = and i32 %176, undef
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %171
  %180 = load i32, i32* @ERROR, align 4
  %181 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %182 = call i32 @errcode(i32 %181)
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %184 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %183)
  %185 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %184)
  %186 = call i32 @ereport(i32 %180, i32 %185)
  br label %187

187:                                              ; preds = %179, %171, %166
  br label %228

188:                                              ; preds = %113
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = load i32, i32* @ERROR, align 4
  %195 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %196 = call i32 @errcode(i32 %195)
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %198 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %197)
  %199 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %198)
  %200 = call i32 @ereport(i32 %194, i32 %199)
  br label %201

201:                                              ; preds = %193, %188
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %203, align 8
  %205 = icmp ne i32 (%struct.TYPE_15__*)* %204, null
  br i1 %205, label %206, label %222

206:                                              ; preds = %201
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %208, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %211 = call i32 %209(%struct.TYPE_15__* %210)
  %212 = and i32 %211, undef
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %206
  %215 = load i32, i32* @ERROR, align 4
  %216 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %217 = call i32 @errcode(i32 %216)
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %219 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %218)
  %220 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 %219)
  %221 = call i32 @ereport(i32 %215, i32 %220)
  br label %222

222:                                              ; preds = %214, %206, %201
  br label %228

223:                                              ; preds = %113
  %224 = load i32, i32* @ERROR, align 4
  %225 = load i64, i64* %4, align 8
  %226 = trunc i64 %225 to i32
  %227 = call i32 @elog(i32 %224, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %223, %222, %187, %152
  br label %237

229:                                              ; preds = %2
  %230 = load i32, i32* @ERROR, align 4
  %231 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %232 = call i32 @errcode(i32 %231)
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %234 = call i32 @RelationGetRelationName(%struct.TYPE_15__* %233)
  %235 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %234)
  %236 = call i32 @ereport(i32 %230, i32 %235)
  br label %237

237:                                              ; preds = %229, %228, %112, %100, %31, %23, %19
  ret void
}

declare dso_local i32 @CheckCmdReplicaIdentity(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_15__*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @MatViewIncrementalMaintenanceIsEnabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
