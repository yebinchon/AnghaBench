; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_ExecGrant_Attribute.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_ExecGrant_Attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@Natts_pg_attribute = common dso_local global i32 0, align 4
@ATTNUM = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"cache lookup failed for attribute %d of relation %u\00", align 1
@Anum_pg_attribute_attacl = common dso_local global i32 0, align 4
@OBJECT_COLUMN = common dso_local global i32 0, align 4
@ACL_ALL_RIGHTS_COLUMN = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i8*, i32, i32, i32, i32, i32*)* @ExecGrant_Attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecGrant_Attribute(%struct.TYPE_13__* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_14__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %36 = load i32, i32* @Natts_pg_attribute, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %28, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %29, align 8
  %40 = load i32, i32* @Natts_pg_attribute, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %30, align 8
  %43 = load i32, i32* @Natts_pg_attribute, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %31, align 8
  %46 = load i32, i32* @ATTNUM, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @ObjectIdGetDatum(i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @Int16GetDatum(i32 %49)
  %51 = call %struct.TYPE_14__* @SearchSysCache2(i32 %46, i32 %48, i32 %50)
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %17, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %53 = call i32 @HeapTupleIsValid(%struct.TYPE_14__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %8
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @elog(i32 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %62 = call i64 @GETSTRUCT(%struct.TYPE_14__* %61)
  %63 = inttoptr i64 %62 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %18, align 8
  %64 = load i32, i32* @ATTNUM, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %66 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %67 = call i32 @SysCacheGetAttr(i32 %64, %struct.TYPE_14__* %65, i32 %66, i32* %23)
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %23, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i32, i32* @OBJECT_COLUMN, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32* @acldefault(i32 %71, i32 %72)
  store i32* %73, i32** %19, align 8
  store i32 0, i32* %32, align 4
  store i32* null, i32** %34, align 8
  br label %79

74:                                               ; preds = %60
  %75 = load i32, i32* %22, align 4
  %76 = call i32* @DatumGetAclPCopy(i32 %75)
  store i32* %76, i32** %19, align 8
  %77 = load i32*, i32** %19, align 8
  %78 = call i32 @aclmembers(i32* %77, i32** %34)
  store i32 %78, i32* %32, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load i32*, i32** %16, align 8
  %81 = load i32*, i32** %19, align 8
  %82 = call i32* @aclconcat(i32* %80, i32* %81)
  store i32* %82, i32** %21, align 8
  %83 = call i32 (...) @GetUserId()
  %84 = load i32, i32* %14, align 4
  %85 = load i32*, i32** %21, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @select_best_grantor(i32 %83, i32 %84, i32* %85, i32 %86, i32* %24, i32* %25)
  %88 = load i32*, i32** %21, align 8
  %89 = call i32 @pfree(i32* %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %25, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @ACL_ALL_RIGHTS_COLUMN, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* @OBJECT_COLUMN, align 4
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @NameStr(i32 %106)
  %108 = call i32 @restrict_and_check_grant(i32 %92, i32 %93, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i8* %102, i32 %103, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32*, i32** %19, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32* @merge_acl_with_grant(i32* %109, i32 %112, i32 %115, i32 %118, i32 %121, i32 %122, i32 %123, i32 %124)
  store i32* %125, i32** %20, align 8
  %126 = load i32*, i32** %20, align 8
  %127 = call i32 @aclmembers(i32* %126, i32** %35)
  store i32 %127, i32* %33, align 4
  %128 = mul nuw i64 4, %37
  %129 = trunc i64 %128 to i32
  %130 = call i32 @MemSet(i32* %39, i32 0, i32 %129)
  %131 = mul nuw i64 4, %41
  %132 = trunc i64 %131 to i32
  %133 = call i32 @MemSet(i32* %42, i32 0, i32 %132)
  %134 = mul nuw i64 4, %44
  %135 = trunc i64 %134 to i32
  %136 = call i32 @MemSet(i32* %45, i32 0, i32 %135)
  %137 = load i32*, i32** %20, align 8
  %138 = call i64 @ACL_NUM(i32* %137)
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %79
  %141 = load i32*, i32** %20, align 8
  %142 = call i32 @PointerGetDatum(i32* %141)
  %143 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %39, i64 %145
  store i32 %142, i32* %146, align 4
  store i32 1, i32* %26, align 4
  br label %156

147:                                              ; preds = %79
  %148 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %42, i64 %150
  store i32 1, i32* %151, align 4
  %152 = load i32, i32* %23, align 4
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %26, align 4
  br label %156

156:                                              ; preds = %147, %140
  %157 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %45, i64 %159
  store i32 1, i32* %160, align 4
  %161 = load i32, i32* %26, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %194

163:                                              ; preds = %156
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @RelationGetDescr(i32 %165)
  %167 = call %struct.TYPE_14__* @heap_modify_tuple(%struct.TYPE_14__* %164, i32 %166, i32* %39, i32* %42, i32* %45)
  store %struct.TYPE_14__* %167, %struct.TYPE_14__** %27, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %172 = call i32 @CatalogTupleUpdate(i32 %168, i32* %170, %struct.TYPE_14__* %171)
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @RelationRelationId, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32*, i32** %20, align 8
  %177 = call i64 @ACL_NUM(i32* %176)
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %163
  %180 = load i32*, i32** %20, align 8
  br label %182

181:                                              ; preds = %163
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i32* [ %180, %179 ], [ null, %181 ]
  %184 = call i32 @recordExtensionInitPriv(i32 %173, i32 %174, i32 %175, i32* %183)
  %185 = load i32, i32* @RelationRelationId, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %32, align 4
  %190 = load i32*, i32** %34, align 8
  %191 = load i32, i32* %33, align 4
  %192 = load i32*, i32** %35, align 8
  %193 = call i32 @updateAclDependencies(i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32* %190, i32 %191, i32* %192)
  br label %194

194:                                              ; preds = %182, %156
  %195 = load i32*, i32** %20, align 8
  %196 = call i32 @pfree(i32* %195)
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %198 = call i32 @ReleaseSysCache(%struct.TYPE_14__* %197)
  %199 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %199)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_14__* @SearchSysCache2(i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @Int16GetDatum(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_14__*) #2

declare dso_local i32 @elog(i32, i8*, i32, i32) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_14__*) #2

declare dso_local i32 @SysCacheGetAttr(i32, %struct.TYPE_14__*, i32, i32*) #2

declare dso_local i32* @acldefault(i32, i32) #2

declare dso_local i32* @DatumGetAclPCopy(i32) #2

declare dso_local i32 @aclmembers(i32*, i32**) #2

declare dso_local i32* @aclconcat(i32*, i32*) #2

declare dso_local i32 @select_best_grantor(i32, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32 @pfree(i32*) #2

declare dso_local i32 @restrict_and_check_grant(i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @NameStr(i32) #2

declare dso_local i32* @merge_acl_with_grant(i32*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @MemSet(i32*, i32, i32) #2

declare dso_local i64 @ACL_NUM(i32*) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local %struct.TYPE_14__* @heap_modify_tuple(%struct.TYPE_14__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @recordExtensionInitPriv(i32, i32, i32, i32*) #2

declare dso_local i32 @updateAclDependencies(i32, i32, i32, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_14__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
