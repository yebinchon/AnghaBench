; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_catalog.c_IsSharedRelation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_catalog.c_IsSharedRelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AuthIdRelationId = common dso_local global i64 0, align 8
@AuthMemRelationId = common dso_local global i64 0, align 8
@DatabaseRelationId = common dso_local global i64 0, align 8
@PLTemplateRelationId = common dso_local global i64 0, align 8
@SharedDescriptionRelationId = common dso_local global i64 0, align 8
@SharedDependRelationId = common dso_local global i64 0, align 8
@SharedSecLabelRelationId = common dso_local global i64 0, align 8
@TableSpaceRelationId = common dso_local global i64 0, align 8
@DbRoleSettingRelationId = common dso_local global i64 0, align 8
@ReplicationOriginRelationId = common dso_local global i64 0, align 8
@SubscriptionRelationId = common dso_local global i64 0, align 8
@AuthIdRolnameIndexId = common dso_local global i64 0, align 8
@AuthIdOidIndexId = common dso_local global i64 0, align 8
@AuthMemRoleMemIndexId = common dso_local global i64 0, align 8
@AuthMemMemRoleIndexId = common dso_local global i64 0, align 8
@DatabaseNameIndexId = common dso_local global i64 0, align 8
@DatabaseOidIndexId = common dso_local global i64 0, align 8
@PLTemplateNameIndexId = common dso_local global i64 0, align 8
@SharedDescriptionObjIndexId = common dso_local global i64 0, align 8
@SharedDependDependerIndexId = common dso_local global i64 0, align 8
@SharedDependReferenceIndexId = common dso_local global i64 0, align 8
@SharedSecLabelObjectIndexId = common dso_local global i64 0, align 8
@TablespaceOidIndexId = common dso_local global i64 0, align 8
@TablespaceNameIndexId = common dso_local global i64 0, align 8
@DbRoleSettingDatidRolidIndexId = common dso_local global i64 0, align 8
@ReplicationOriginIdentIndex = common dso_local global i64 0, align 8
@ReplicationOriginNameIndex = common dso_local global i64 0, align 8
@SubscriptionObjectIndexId = common dso_local global i64 0, align 8
@SubscriptionNameIndexId = common dso_local global i64 0, align 8
@PgAuthidToastTable = common dso_local global i64 0, align 8
@PgAuthidToastIndex = common dso_local global i64 0, align 8
@PgDatabaseToastTable = common dso_local global i64 0, align 8
@PgDatabaseToastIndex = common dso_local global i64 0, align 8
@PgDbRoleSettingToastTable = common dso_local global i64 0, align 8
@PgDbRoleSettingToastIndex = common dso_local global i64 0, align 8
@PgPlTemplateToastTable = common dso_local global i64 0, align 8
@PgPlTemplateToastIndex = common dso_local global i64 0, align 8
@PgReplicationOriginToastTable = common dso_local global i64 0, align 8
@PgReplicationOriginToastIndex = common dso_local global i64 0, align 8
@PgShdescriptionToastTable = common dso_local global i64 0, align 8
@PgShdescriptionToastIndex = common dso_local global i64 0, align 8
@PgShseclabelToastTable = common dso_local global i64 0, align 8
@PgShseclabelToastIndex = common dso_local global i64 0, align 8
@PgSubscriptionToastTable = common dso_local global i64 0, align 8
@PgSubscriptionToastIndex = common dso_local global i64 0, align 8
@PgTablespaceToastTable = common dso_local global i64 0, align 8
@PgTablespaceToastIndex = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsSharedRelation(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @AuthIdRelationId, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %47, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @AuthMemRelationId, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %47, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @DatabaseRelationId, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %47, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @PLTemplateRelationId, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %47, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @SharedDescriptionRelationId, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %47, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @SharedDependRelationId, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @SharedSecLabelRelationId, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @TableSpaceRelationId, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @DbRoleSettingRelationId, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @ReplicationOriginRelationId, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @SubscriptionRelationId, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39, %35, %31, %27, %23, %19, %15, %11, %7, %1
  store i32 1, i32* %2, align 4
  br label %195

48:                                               ; preds = %43
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @AuthIdRolnameIndexId, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %120, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @AuthIdOidIndexId, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %120, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @AuthMemRoleMemIndexId, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %120, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @AuthMemMemRoleIndexId, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %120, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @DatabaseNameIndexId, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %120, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @DatabaseOidIndexId, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %120, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* @PLTemplateNameIndexId, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %120, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @SharedDescriptionObjIndexId, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %120, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @SharedDependDependerIndexId, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %120, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @SharedDependReferenceIndexId, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %120, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* @SharedSecLabelObjectIndexId, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %120, label %92

92:                                               ; preds = %88
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* @TablespaceOidIndexId, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* @TablespaceNameIndexId, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %120, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* @DbRoleSettingDatidRolidIndexId, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* @ReplicationOriginIdentIndex, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @ReplicationOriginNameIndex, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* @SubscriptionObjectIndexId, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %3, align 8
  %118 = load i64, i64* @SubscriptionNameIndexId, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48
  store i32 1, i32* %2, align 4
  br label %195

121:                                              ; preds = %116
  %122 = load i64, i64* %3, align 8
  %123 = load i64, i64* @PgAuthidToastTable, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %193, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %3, align 8
  %127 = load i64, i64* @PgAuthidToastIndex, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %193, label %129

129:                                              ; preds = %125
  %130 = load i64, i64* %3, align 8
  %131 = load i64, i64* @PgDatabaseToastTable, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %193, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* %3, align 8
  %135 = load i64, i64* @PgDatabaseToastIndex, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %193, label %137

137:                                              ; preds = %133
  %138 = load i64, i64* %3, align 8
  %139 = load i64, i64* @PgDbRoleSettingToastTable, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %193, label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %3, align 8
  %143 = load i64, i64* @PgDbRoleSettingToastIndex, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %193, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %3, align 8
  %147 = load i64, i64* @PgPlTemplateToastTable, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %193, label %149

149:                                              ; preds = %145
  %150 = load i64, i64* %3, align 8
  %151 = load i64, i64* @PgPlTemplateToastIndex, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %193, label %153

153:                                              ; preds = %149
  %154 = load i64, i64* %3, align 8
  %155 = load i64, i64* @PgReplicationOriginToastTable, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %193, label %157

157:                                              ; preds = %153
  %158 = load i64, i64* %3, align 8
  %159 = load i64, i64* @PgReplicationOriginToastIndex, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %193, label %161

161:                                              ; preds = %157
  %162 = load i64, i64* %3, align 8
  %163 = load i64, i64* @PgShdescriptionToastTable, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %193, label %165

165:                                              ; preds = %161
  %166 = load i64, i64* %3, align 8
  %167 = load i64, i64* @PgShdescriptionToastIndex, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %193, label %169

169:                                              ; preds = %165
  %170 = load i64, i64* %3, align 8
  %171 = load i64, i64* @PgShseclabelToastTable, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %193, label %173

173:                                              ; preds = %169
  %174 = load i64, i64* %3, align 8
  %175 = load i64, i64* @PgShseclabelToastIndex, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %193, label %177

177:                                              ; preds = %173
  %178 = load i64, i64* %3, align 8
  %179 = load i64, i64* @PgSubscriptionToastTable, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %177
  %182 = load i64, i64* %3, align 8
  %183 = load i64, i64* @PgSubscriptionToastIndex, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = load i64, i64* %3, align 8
  %187 = load i64, i64* @PgTablespaceToastTable, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* %3, align 8
  %191 = load i64, i64* @PgTablespaceToastIndex, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %189, %185, %181, %177, %173, %169, %165, %161, %157, %153, %149, %145, %141, %137, %133, %129, %125, %121
  store i32 1, i32* %2, align 4
  br label %195

194:                                              ; preds = %189
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %193, %120, %47
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
