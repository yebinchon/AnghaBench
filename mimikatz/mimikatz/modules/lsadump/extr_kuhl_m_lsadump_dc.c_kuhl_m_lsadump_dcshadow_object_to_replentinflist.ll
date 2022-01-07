; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_object_to_replentinflist.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_object_to_replentinflist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_34__, i32*, i32* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32, i64, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__, i32, %struct.TYPE_24__* }
%struct.TYPE_33__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i32, i32* }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_31__*, i32, i32*, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_26__* }
%struct.TYPE_30__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_28__ = type { i32, i32* }
%struct.TYPE_26__ = type { i32 }

@ENTINF_FROM_MASTER = common dso_local global i32 0, align 4
@OBJECT_DYNAMIC = common dso_local global i32 0, align 4
@ENTINF_DYNAMIC_OBJECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@REPLICATION_UID_SET = common dso_local global i32 0, align 4
@REPLICATION_USN_SET = common dso_local global i32 0, align 4
@REPLICATION_TIME_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_object_to_replentinflist(%struct.TYPE_23__* %0, %struct.TYPE_20__** %1, %struct.TYPE_22__* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_20__**, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_20__** %1, %struct.TYPE_20__*** %8, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = call i64 @MIDL_user_allocate(i32 64)
  %15 = inttoptr i64 %14 to %struct.TYPE_20__*
  %16 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %16, align 8
  %17 = icmp ne %struct.TYPE_20__* %15, null
  br i1 %17, label %18, label %549

18:                                               ; preds = %5
  %19 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @lstrlen(i32* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 32, %28
  %30 = trunc i64 %29 to i32
  %31 = call i64 @MIDL_user_allocate(i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_24__*
  %33 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %35, i32 0, i32 2
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %36, align 8
  %37 = icmp ne %struct.TYPE_24__* %32, null
  br i1 %37, label %38, label %119

38:                                               ; preds = %18
  %39 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %42, align 8
  %44 = call i32 @RtlZeroMemory(%struct.TYPE_24__* %43, i32 32)
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = add i64 32, %47
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  store i32 %49, i32* %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  store i32 %56, i32* %62, align 4
  %63 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32 @RtlCopyMemory(i32* %69, i32* %72, i32 %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 6
  %81 = call i64 @IsValidSid(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %38
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 6
  %86 = call i32 @GetLengthSid(i32* %85)
  %87 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  store i32 %86, i32* %92, align 8
  %93 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @RtlCopyMemory(i32* %98, i32* %100, i32 %107)
  br label %109

109:                                              ; preds = %83, %38
  %110 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 5
  %118 = call i32 @RtlCopyMemory(i32* %115, i32* %117, i32 4)
  br label %119

119:                                              ; preds = %109, %18
  %120 = load i32, i32* @ENTINF_FROM_MASTER, align 4
  %121 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 8
  %125 = load i32, i32* @OBJECT_DYNAMIC, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %119
  %132 = load i32, i32* @ENTINF_DYNAMIC_OBJECT, align 4
  %133 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %132
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %131, %119
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 0
  store i32 %142, i32* %147, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = call i64 @_wcsicmp(i32 %150, i32* %153)
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 3
  store i32* null, i32** %162, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 3
  %165 = call i32 @IsNullGuid(i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %182, label %167

167:                                              ; preds = %139
  %168 = call i64 @MIDL_user_allocate(i32 4)
  %169 = inttoptr i64 %168 to i32*
  %170 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 3
  store i32* %169, i32** %172, align 8
  %173 = icmp ne i32* %169, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 3
  %181 = call i32 @RtlCopyMemory(i32* %178, i32* %180, i32 4)
  br label %182

182:                                              ; preds = %174, %167, %139
  %183 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = mul i64 24, %189
  %191 = trunc i64 %190 to i32
  %192 = call i64 @MIDL_user_allocate(i32 %191)
  %193 = inttoptr i64 %192 to %struct.TYPE_25__*
  %194 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 1
  store %struct.TYPE_25__* %193, %struct.TYPE_25__** %198, align 8
  %199 = icmp ne %struct.TYPE_25__* %193, null
  br i1 %199, label %200, label %286

200:                                              ; preds = %182
  store i32 0, i32* %12, align 4
  br label %201

201:                                              ; preds = %282, %200
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %202, %208
  br i1 %209, label %210, label %285

210:                                              ; preds = %201
  %211 = load i32*, i32** %10, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %213, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 1
  %232 = load i32, i32* @TRUE, align 4
  %233 = call i32 @kull_m_rpc_drsr_MakeAttid(i32* %211, i32 %221, i32* %231, i32 %232)
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %247, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 1
  store i32* %242, i32** %253, align 8
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 1
  store i32* null, i32** %261, align 8
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %275, align 8
  %277 = load i32, i32* %12, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 0
  store i32 %270, i32* %281, align 8
  br label %282

282:                                              ; preds = %210
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %12, align 4
  br label %201

285:                                              ; preds = %201
  br label %288

286:                                              ; preds = %182
  %287 = load i32, i32* @FALSE, align 4
  store i32 %287, i32* %6, align 4
  br label %551

288:                                              ; preds = %285
  %289 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = mul i64 %296, 4
  %298 = add i64 16, %297
  %299 = trunc i64 %298 to i32
  %300 = call i64 @MIDL_user_allocate(i32 %299)
  %301 = inttoptr i64 %300 to %struct.TYPE_21__*
  %302 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 1
  store %struct.TYPE_21__* %301, %struct.TYPE_21__** %304, align 8
  %305 = icmp ne %struct.TYPE_21__* %301, null
  br i1 %305, label %306, label %545

306:                                              ; preds = %288
  %307 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 0
  store i32 %312, i32* %317, align 8
  store i32 0, i32* %12, align 4
  br label %318

318:                                              ; preds = %541, %306
  %319 = load i32, i32* %12, align 4
  %320 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp slt i32 %319, %325
  br i1 %326, label %327, label %544

327:                                              ; preds = %318
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_31__*, %struct.TYPE_31__** %329, align 8
  %331 = load i32, i32* %12, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_32__*, %struct.TYPE_32__** %341, align 8
  %343 = load i32, i32* %12, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 1
  store i32 %336, i32* %346, align 4
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_31__*, %struct.TYPE_31__** %348, align 8
  %350 = load i32, i32* %12, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @REPLICATION_UID_SET, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %379

359:                                              ; preds = %327
  %360 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %361 = load %struct.TYPE_20__*, %struct.TYPE_20__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_21__*, %struct.TYPE_21__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_32__*, %struct.TYPE_32__** %364, align 8
  %366 = load i32, i32* %12, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %368, i32 0, i32 3
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 2
  %372 = load %struct.TYPE_31__*, %struct.TYPE_31__** %371, align 8
  %373 = load i32, i32* %12, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %376, i32 0, i32 4
  %378 = call i32 @RtlCopyMemory(i32* %369, i32* %377, i32 4)
  br label %394

379:                                              ; preds = %327
  %380 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_32__*, %struct.TYPE_32__** %384, align 8
  %386 = load i32, i32* %12, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %388, i32 0, i32 3
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %391, i32 0, i32 0
  %393 = call i32 @RtlCopyMemory(i32* %389, i32* %392, i32 4)
  br label %394

394:                                              ; preds = %379, %359
  %395 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %395, i32 0, i32 2
  %397 = load %struct.TYPE_31__*, %struct.TYPE_31__** %396, align 8
  %398 = load i32, i32* %12, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @REPLICATION_USN_SET, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %427

407:                                              ; preds = %394
  %408 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %409 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %408, i32 0, i32 2
  %410 = load %struct.TYPE_31__*, %struct.TYPE_31__** %409, align 8
  %411 = load i32, i32* %12, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %410, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %414, i32 0, i32 3
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %418 = load %struct.TYPE_20__*, %struct.TYPE_20__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %418, i32 0, i32 1
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %420, i32 0, i32 1
  %422 = load %struct.TYPE_32__*, %struct.TYPE_32__** %421, align 8
  %423 = load i32, i32* %12, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %425, i32 0, i32 2
  store i64 %416, i64* %426, align 8
  br label %442

427:                                              ; preds = %394
  %428 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = add nsw i64 %430, 1
  store i64 %431, i64* %429, align 8
  %432 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_21__*, %struct.TYPE_21__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %435, i32 0, i32 1
  %437 = load %struct.TYPE_32__*, %struct.TYPE_32__** %436, align 8
  %438 = load i32, i32* %12, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %440, i32 0, i32 2
  store i64 %431, i64* %441, align 8
  br label %442

442:                                              ; preds = %427, %407
  %443 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %444 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %443, i32 0, i32 2
  %445 = load %struct.TYPE_31__*, %struct.TYPE_31__** %444, align 8
  %446 = load i32, i32* %12, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @REPLICATION_TIME_SET, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %476

455:                                              ; preds = %442
  %456 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %457 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %456, i32 0, i32 2
  %458 = load %struct.TYPE_31__*, %struct.TYPE_31__** %457, align 8
  %459 = load i32, i32* %12, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = sdiv i32 %464, 10000000
  %466 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %467 = load %struct.TYPE_20__*, %struct.TYPE_20__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %467, i32 0, i32 1
  %469 = load %struct.TYPE_21__*, %struct.TYPE_21__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %469, i32 0, i32 1
  %471 = load %struct.TYPE_32__*, %struct.TYPE_32__** %470, align 8
  %472 = load i32, i32* %12, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %474, i32 0, i32 0
  store i32 %465, i32* %475, align 8
  br label %491

476:                                              ; preds = %442
  %477 = load i64, i64* %11, align 8
  %478 = inttoptr i64 %477 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = sdiv i32 %479, 10000000
  %481 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %482 = load %struct.TYPE_20__*, %struct.TYPE_20__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %482, i32 0, i32 1
  %484 = load %struct.TYPE_21__*, %struct.TYPE_21__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %484, i32 0, i32 1
  %486 = load %struct.TYPE_32__*, %struct.TYPE_32__** %485, align 8
  %487 = load i32, i32* %12, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %486, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %489, i32 0, i32 0
  store i32 %480, i32* %490, align 8
  br label %491

491:                                              ; preds = %476, %455
  %492 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %493 = load %struct.TYPE_20__*, %struct.TYPE_20__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %493, i32 0, i32 1
  %495 = load %struct.TYPE_21__*, %struct.TYPE_21__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %495, i32 0, i32 1
  %497 = load %struct.TYPE_32__*, %struct.TYPE_32__** %496, align 8
  %498 = load i32, i32* %12, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %497, i64 %499
  %501 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %527

504:                                              ; preds = %491
  %505 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %506 = load %struct.TYPE_20__*, %struct.TYPE_20__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %506, i32 0, i32 1
  %508 = load %struct.TYPE_21__*, %struct.TYPE_21__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %508, i32 0, i32 1
  %510 = load %struct.TYPE_32__*, %struct.TYPE_32__** %509, align 8
  %511 = load i32, i32* %12, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %510, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %517 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %516, i32 0, i32 2
  %518 = load %struct.TYPE_31__*, %struct.TYPE_31__** %517, align 8
  %519 = load i32, i32* %12, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 4
  %525 = sdiv i32 %524, 10000000
  %526 = icmp sle i32 %515, %525
  br i1 %526, label %527, label %540

527:                                              ; preds = %504, %491
  %528 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %8, align 8
  %529 = load %struct.TYPE_20__*, %struct.TYPE_20__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %529, i32 0, i32 1
  %531 = load %struct.TYPE_21__*, %struct.TYPE_21__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %531, i32 0, i32 1
  %533 = load %struct.TYPE_32__*, %struct.TYPE_32__** %532, align 8
  %534 = load i32, i32* %12, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %533, i64 %535
  %537 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %537, align 4
  br label %540

540:                                              ; preds = %527, %504
  br label %541

541:                                              ; preds = %540
  %542 = load i32, i32* %12, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %12, align 4
  br label %318

544:                                              ; preds = %318
  br label %547

545:                                              ; preds = %288
  %546 = load i32, i32* @FALSE, align 4
  store i32 %546, i32* %6, align 4
  br label %551

547:                                              ; preds = %544
  %548 = load i32, i32* @TRUE, align 4
  store i32 %548, i32* %6, align 4
  br label %551

549:                                              ; preds = %5
  %550 = load i32, i32* @FALSE, align 4
  store i32 %550, i32* %6, align 4
  br label %551

551:                                              ; preds = %549, %547, %545, %286
  %552 = load i32, i32* %6, align 4
  ret i32 %552
}

declare dso_local i64 @MIDL_user_allocate(i32) #1

declare dso_local i32 @lstrlen(i32*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i64 @IsValidSid(i32*) #1

declare dso_local i32 @GetLengthSid(i32*) #1

declare dso_local i64 @_wcsicmp(i32, i32*) #1

declare dso_local i32 @IsNullGuid(i32*) #1

declare dso_local i32 @kull_m_rpc_drsr_MakeAttid(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
