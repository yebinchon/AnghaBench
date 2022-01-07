; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_doDeletion.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_doDeletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@RELKIND_INDEX = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i8 0, align 1
@PERFORM_DELETION_CONCURRENTLY = common dso_local global i32 0, align 4
@PERFORM_DELETION_CONCURRENT_LOCK = common dso_local global i32 0, align 4
@RELKIND_SEQUENCE = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"global objects cannot be deleted by doDeletion\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @doDeletion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doDeletion(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = call i32 @getObjectClass(%struct.TYPE_4__* %8)
  switch i32 %9, label %248 [
    i32 161, label %10
    i32 144, label %80
    i32 129, label %85
    i32 162, label %90
    i32 160, label %95
    i32 159, label %100
    i32 158, label %105
    i32 155, label %110
    i32 150, label %115
    i32 149, label %120
    i32 147, label %125
    i32 148, label %130
    i32 146, label %135
    i32 165, label %140
    i32 164, label %145
    i32 163, label %150
    i32 141, label %155
    i32 134, label %160
    i32 139, label %165
    i32 138, label %170
    i32 131, label %175
    i32 132, label %180
    i32 130, label %185
    i32 133, label %190
    i32 152, label %195
    i32 151, label %200
    i32 128, label %205
    i32 156, label %210
    i32 153, label %215
    i32 154, label %220
    i32 145, label %225
    i32 143, label %230
    i32 142, label %235
    i32 135, label %240
    i32 140, label %245
    i32 157, label %245
    i32 136, label %245
    i32 137, label %245
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call signext i8 @get_rel_relkind(i32 %13)
  store i8 %14, i8* %5, align 1
  %15 = load i8, i8* %5, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8, i8* @RELKIND_INDEX, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %10
  %21 = load i8, i8* %5, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20, %10
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PERFORM_DELETION_CONCURRENTLY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PERFORM_DELETION_CONCURRENT_LOCK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @index_drop(i32 %45, i32 %46, i32 %47)
  br label %68

49:                                               ; preds = %20
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @RemoveAttributeById(i32 %57, i32 %60)
  br label %67

62:                                               ; preds = %49
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @heap_drop_with_catalog(i32 %65)
  br label %67

67:                                               ; preds = %62, %54
  br label %68

68:                                               ; preds = %67, %26
  %69 = load i8, i8* %5, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @RELKIND_SEQUENCE, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @DeleteSequenceTuple(i32 %77)
  br label %79

79:                                               ; preds = %74, %68
  br label %248

80:                                               ; preds = %2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @RemoveFunctionById(i32 %83)
  br label %248

85:                                               ; preds = %2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @RemoveTypeById(i32 %88)
  br label %248

90:                                               ; preds = %2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @DropCastById(i32 %93)
  br label %248

95:                                               ; preds = %2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @RemoveCollationById(i32 %98)
  br label %248

100:                                              ; preds = %2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @RemoveConstraintById(i32 %103)
  br label %248

105:                                              ; preds = %2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @RemoveConversionById(i32 %108)
  br label %248

110:                                              ; preds = %2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @RemoveAttrDefaultById(i32 %113)
  br label %248

115:                                              ; preds = %2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @DropProceduralLanguageById(i32 %118)
  br label %248

120:                                              ; preds = %2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @LargeObjectDrop(i32 %123)
  br label %248

125:                                              ; preds = %2
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @RemoveOperatorById(i32 %128)
  br label %248

130:                                              ; preds = %2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @RemoveOpClassById(i32 %133)
  br label %248

135:                                              ; preds = %2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @RemoveOpFamilyById(i32 %138)
  br label %248

140:                                              ; preds = %2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @RemoveAccessMethodById(i32 %143)
  br label %248

145:                                              ; preds = %2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @RemoveAmOpEntryById(i32 %148)
  br label %248

150:                                              ; preds = %2
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @RemoveAmProcEntryById(i32 %153)
  br label %248

155:                                              ; preds = %2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @RemoveRewriteRuleById(i32 %158)
  br label %248

160:                                              ; preds = %2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @RemoveTriggerById(i32 %163)
  br label %248

165:                                              ; preds = %2
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @RemoveSchemaById(i32 %168)
  br label %248

170:                                              ; preds = %2
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @RemoveStatisticsById(i32 %173)
  br label %248

175:                                              ; preds = %2
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @RemoveTSParserById(i32 %178)
  br label %248

180:                                              ; preds = %2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @RemoveTSDictionaryById(i32 %183)
  br label %248

185:                                              ; preds = %2
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @RemoveTSTemplateById(i32 %188)
  br label %248

190:                                              ; preds = %2
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @RemoveTSConfigurationById(i32 %193)
  br label %248

195:                                              ; preds = %2
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @RemoveForeignDataWrapperById(i32 %198)
  br label %248

200:                                              ; preds = %2
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @RemoveForeignServerById(i32 %203)
  br label %248

205:                                              ; preds = %2
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @RemoveUserMappingById(i32 %208)
  br label %248

210:                                              ; preds = %2
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @RemoveDefaultACLById(i32 %213)
  br label %248

215:                                              ; preds = %2
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @RemoveExtensionById(i32 %218)
  br label %248

220:                                              ; preds = %2
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @RemoveEventTriggerById(i32 %223)
  br label %248

225:                                              ; preds = %2
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @RemovePolicyById(i32 %228)
  br label %248

230:                                              ; preds = %2
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @RemovePublicationById(i32 %233)
  br label %248

235:                                              ; preds = %2
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @RemovePublicationRelById(i32 %238)
  br label %248

240:                                              ; preds = %2
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @DropTransformById(i32 %243)
  br label %248

245:                                              ; preds = %2, %2, %2, %2
  %246 = load i32, i32* @ERROR, align 4
  %247 = call i32 @elog(i32 %246, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %248

248:                                              ; preds = %2, %245, %240, %235, %230, %225, %220, %215, %210, %205, %200, %195, %190, %185, %180, %175, %170, %165, %160, %155, %150, %145, %140, %135, %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %79
  ret void
}

declare dso_local i32 @getObjectClass(%struct.TYPE_4__*) #1

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @index_drop(i32, i32, i32) #1

declare dso_local i32 @RemoveAttributeById(i32, i32) #1

declare dso_local i32 @heap_drop_with_catalog(i32) #1

declare dso_local i32 @DeleteSequenceTuple(i32) #1

declare dso_local i32 @RemoveFunctionById(i32) #1

declare dso_local i32 @RemoveTypeById(i32) #1

declare dso_local i32 @DropCastById(i32) #1

declare dso_local i32 @RemoveCollationById(i32) #1

declare dso_local i32 @RemoveConstraintById(i32) #1

declare dso_local i32 @RemoveConversionById(i32) #1

declare dso_local i32 @RemoveAttrDefaultById(i32) #1

declare dso_local i32 @DropProceduralLanguageById(i32) #1

declare dso_local i32 @LargeObjectDrop(i32) #1

declare dso_local i32 @RemoveOperatorById(i32) #1

declare dso_local i32 @RemoveOpClassById(i32) #1

declare dso_local i32 @RemoveOpFamilyById(i32) #1

declare dso_local i32 @RemoveAccessMethodById(i32) #1

declare dso_local i32 @RemoveAmOpEntryById(i32) #1

declare dso_local i32 @RemoveAmProcEntryById(i32) #1

declare dso_local i32 @RemoveRewriteRuleById(i32) #1

declare dso_local i32 @RemoveTriggerById(i32) #1

declare dso_local i32 @RemoveSchemaById(i32) #1

declare dso_local i32 @RemoveStatisticsById(i32) #1

declare dso_local i32 @RemoveTSParserById(i32) #1

declare dso_local i32 @RemoveTSDictionaryById(i32) #1

declare dso_local i32 @RemoveTSTemplateById(i32) #1

declare dso_local i32 @RemoveTSConfigurationById(i32) #1

declare dso_local i32 @RemoveForeignDataWrapperById(i32) #1

declare dso_local i32 @RemoveForeignServerById(i32) #1

declare dso_local i32 @RemoveUserMappingById(i32) #1

declare dso_local i32 @RemoveDefaultACLById(i32) #1

declare dso_local i32 @RemoveExtensionById(i32) #1

declare dso_local i32 @RemoveEventTriggerById(i32) #1

declare dso_local i32 @RemovePolicyById(i32) #1

declare dso_local i32 @RemovePublicationById(i32) #1

declare dso_local i32 @RemovePublicationRelById(i32) #1

declare dso_local i32 @DropTransformById(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
