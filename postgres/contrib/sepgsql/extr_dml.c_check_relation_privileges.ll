; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_dml.c_check_relation_privileges.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_dml.c_check_relation_privileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i8* }

@SEPG_DB_TABLE__UPDATE = common dso_local global i32 0, align 4
@SEPG_DB_TABLE__INSERT = common dso_local global i32 0, align 4
@SEPG_DB_TABLE__DELETE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SELinux: hardwired security policy violation\00", align 1
@RELKIND_TOASTVALUE = common dso_local global i8 0, align 1
@RelationRelationId = common dso_local global i8* null, align 8
@SEPG_CLASS_DB_TABLE = common dso_local global i32 0, align 4
@SEPG_DB_TABLE__SELECT = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_SEQUENCE = common dso_local global i32 0, align 4
@SEPG_DB_SEQUENCE__GET_VALUE = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_VIEW = common dso_local global i32 0, align 4
@SEPG_DB_VIEW__EXPAND = common dso_local global i32 0, align 4
@SEPG_DB_COLUMN__SELECT = common dso_local global i32 0, align 4
@SEPG_DB_COLUMN__INSERT = common dso_local global i32 0, align 4
@SEPG_DB_COLUMN__UPDATE = common dso_local global i32 0, align 4
@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8
@SEPG_CLASS_DB_COLUMN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i32, i32)* @check_relation_privileges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_relation_privileges(i8* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call signext i8 @get_rel_relkind(i8* %22)
  store i8 %23, i8* %18, align 1
  store i32 1, i32* %19, align 4
  %24 = call i64 (...) @sepgsql_getenforce()
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %6
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @SEPG_DB_TABLE__UPDATE, align 4
  %29 = load i32, i32* @SEPG_DB_TABLE__INSERT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SEPG_DB_TABLE__DELETE, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @IsCatalogRelationOid(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @ereport(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %35, %26
  %46 = load i8, i8* %18, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @RELKIND_TOASTVALUE, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 @ereport(i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %6
  %59 = load i8*, i8** @RelationRelationId, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = call i8* @getObjectIdentity(%struct.TYPE_5__* %14)
  store i8* %64, i8** %15, align 8
  %65 = load i8, i8* %18, align 1
  %66 = sext i8 %65 to i32
  switch i32 %66, label %98 [
    i32 130, label %67
    i32 131, label %67
    i32 129, label %73
    i32 128, label %92
  ]

67:                                               ; preds = %58, %58
  %68 = load i32, i32* @SEPG_CLASS_DB_TABLE, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_5__* %14, i32 %68, i32 %69, i8* %70, i32 %71)
  store i32 %72, i32* %19, align 4
  br label %99

73:                                               ; preds = %58
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @SEPG_DB_TABLE__SELECT, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @Assert(i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @SEPG_DB_TABLE__SELECT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %73
  %86 = load i32, i32* @SEPG_CLASS_DB_SEQUENCE, align 4
  %87 = load i32, i32* @SEPG_DB_SEQUENCE__GET_VALUE, align 4
  %88 = load i8*, i8** %15, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_5__* %14, i32 %86, i32 %87, i8* %88, i32 %89)
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %85, %73
  br label %99

92:                                               ; preds = %58
  %93 = load i32, i32* @SEPG_CLASS_DB_VIEW, align 4
  %94 = load i32, i32* @SEPG_DB_VIEW__EXPAND, align 4
  %95 = load i8*, i8** %15, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_5__* %14, i32 %93, i32 %94, i8* %95, i32 %96)
  store i32 %97, i32* %19, align 4
  br label %99

98:                                               ; preds = %58
  br label %99

99:                                               ; preds = %98, %92, %91, %67
  %100 = load i8*, i8** %15, align 8
  %101 = call i32 @pfree(i8* %100)
  %102 = load i8, i8* %18, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 130
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load i8, i8* %18, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 131
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 1, i32* %7, align 4
  br label %197

110:                                              ; preds = %105, %99
  %111 = load i8*, i8** %8, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = call i32* @fixup_whole_row_references(i8* %111, i32* %112)
  store i32* %113, i32** %9, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i32* @fixup_whole_row_references(i8* %114, i32* %115)
  store i32* %116, i32** %10, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = call i32* @fixup_whole_row_references(i8* %117, i32* %118)
  store i32* %119, i32** %11, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = call i32* @bms_union(i32* %121, i32* %122)
  %124 = call i32* @bms_union(i32* %120, i32* %123)
  store i32* %124, i32** %16, align 8
  br label %125

125:                                              ; preds = %195, %171, %110
  %126 = load i32*, i32** %16, align 8
  %127 = call i32 @bms_first_member(i32* %126)
  store i32 %127, i32* %17, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %196

129:                                              ; preds = %125
  store i32 0, i32* %21, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = call i64 @bms_is_member(i32 %130, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* @SEPG_DB_COLUMN__SELECT, align 4
  %136 = load i32, i32* %21, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %21, align 4
  br label %138

138:                                              ; preds = %134, %129
  %139 = load i32, i32* %17, align 4
  %140 = load i32*, i32** %10, align 8
  %141 = call i64 @bms_is_member(i32 %139, i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @SEPG_DB_TABLE__INSERT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @SEPG_DB_COLUMN__INSERT, align 4
  %150 = load i32, i32* %21, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %21, align 4
  br label %152

152:                                              ; preds = %148, %143
  br label %153

153:                                              ; preds = %152, %138
  %154 = load i32, i32* %17, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = call i64 @bms_is_member(i32 %154, i32* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @SEPG_DB_TABLE__UPDATE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i32, i32* @SEPG_DB_COLUMN__UPDATE, align 4
  %165 = load i32, i32* %21, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %21, align 4
  br label %167

167:                                              ; preds = %163, %158
  br label %168

168:                                              ; preds = %167, %153
  %169 = load i32, i32* %21, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %125

172:                                              ; preds = %168
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %176 = add nsw i64 %174, %175
  store i64 %176, i64* %20, align 8
  %177 = load i8*, i8** @RelationRelationId, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i8* %177, i8** %178, align 8
  %179 = load i8*, i8** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i8* %179, i8** %180, align 8
  %181 = load i64, i64* %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i64 %181, i64* %182, align 8
  %183 = call i8* @getObjectDescription(%struct.TYPE_5__* %14)
  store i8* %183, i8** %15, align 8
  %184 = load i32, i32* @SEPG_CLASS_DB_COLUMN, align 4
  %185 = load i32, i32* %21, align 4
  %186 = load i8*, i8** %15, align 8
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_5__* %14, i32 %184, i32 %185, i8* %186, i32 %187)
  store i32 %188, i32* %19, align 4
  %189 = load i8*, i8** %15, align 8
  %190 = call i32 @pfree(i8* %189)
  %191 = load i32, i32* %19, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %172
  %194 = load i32, i32* %19, align 4
  store i32 %194, i32* %7, align 4
  br label %197

195:                                              ; preds = %172
  br label %125

196:                                              ; preds = %125
  store i32 1, i32* %7, align 4
  br label %197

197:                                              ; preds = %196, %193, %109
  %198 = load i32, i32* %7, align 4
  ret i32 %198
}

declare dso_local signext i8 @get_rel_relkind(i8*) #1

declare dso_local i64 @sepgsql_getenforce(...) #1

declare dso_local i64 @IsCatalogRelationOid(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @getObjectIdentity(%struct.TYPE_5__*) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_5__*, i32, i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32* @fixup_whole_row_references(i8*, i32*) #1

declare dso_local i32* @bms_union(i32*, i32*) #1

declare dso_local i32 @bms_first_member(i32*) #1

declare dso_local i64 @bms_is_member(i32, i32*) #1

declare dso_local i8* @getObjectDescription(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
