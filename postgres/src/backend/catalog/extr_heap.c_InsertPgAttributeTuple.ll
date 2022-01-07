; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_InsertPgAttributeTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_InsertPgAttributeTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Natts_pg_attribute = common dso_local global i32 0, align 4
@Anum_pg_attribute_attrelid = common dso_local global i32 0, align 4
@Anum_pg_attribute_attname = common dso_local global i32 0, align 4
@Anum_pg_attribute_atttypid = common dso_local global i32 0, align 4
@Anum_pg_attribute_attstattarget = common dso_local global i32 0, align 4
@Anum_pg_attribute_attlen = common dso_local global i32 0, align 4
@Anum_pg_attribute_attnum = common dso_local global i32 0, align 4
@Anum_pg_attribute_attndims = common dso_local global i32 0, align 4
@Anum_pg_attribute_attcacheoff = common dso_local global i32 0, align 4
@Anum_pg_attribute_atttypmod = common dso_local global i32 0, align 4
@Anum_pg_attribute_attbyval = common dso_local global i32 0, align 4
@Anum_pg_attribute_attstorage = common dso_local global i32 0, align 4
@Anum_pg_attribute_attalign = common dso_local global i32 0, align 4
@Anum_pg_attribute_attnotnull = common dso_local global i32 0, align 4
@Anum_pg_attribute_atthasdef = common dso_local global i32 0, align 4
@Anum_pg_attribute_atthasmissing = common dso_local global i32 0, align 4
@Anum_pg_attribute_attidentity = common dso_local global i32 0, align 4
@Anum_pg_attribute_attgenerated = common dso_local global i32 0, align 4
@Anum_pg_attribute_attisdropped = common dso_local global i32 0, align 4
@Anum_pg_attribute_attislocal = common dso_local global i32 0, align 4
@Anum_pg_attribute_attinhcount = common dso_local global i32 0, align 4
@Anum_pg_attribute_attcollation = common dso_local global i32 0, align 4
@Anum_pg_attribute_attacl = common dso_local global i32 0, align 4
@Anum_pg_attribute_attoptions = common dso_local global i32 0, align 4
@Anum_pg_attribute_attfdwoptions = common dso_local global i32 0, align 4
@Anum_pg_attribute_attmissingval = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InsertPgAttributeTuple(i32 %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @Natts_pg_attribute, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @Natts_pg_attribute, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %18 = mul nuw i64 4, %12
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i32* %14, i32 0, i32 %19)
  %21 = mul nuw i64 4, %16
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i32* %17, i32 0, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 19
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ObjectIdGetDatum(i32 %26)
  %28 = load i32, i32* @Anum_pg_attribute_attrelid, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %14, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 18
  %34 = call i32 @NameGetDatum(i32* %33)
  %35 = load i32, i32* @Anum_pg_attribute_attname, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %14, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ObjectIdGetDatum(i32 %41)
  %43 = load i32, i32* @Anum_pg_attribute_atttypid, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %14, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @Int32GetDatum(i32 %49)
  %51 = load i32, i32* @Anum_pg_attribute_attstattarget, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %14, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Int16GetDatum(i32 %57)
  %59 = load i32, i32* @Anum_pg_attribute_attlen, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %14, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 15
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @Int16GetDatum(i32 %65)
  %67 = load i32, i32* @Anum_pg_attribute_attnum, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %14, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @Int32GetDatum(i32 %73)
  %75 = load i32, i32* @Anum_pg_attribute_attndims, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %14, i64 %77
  store i32 %74, i32* %78, align 4
  %79 = call i32 @Int32GetDatum(i32 -1)
  %80 = load i32, i32* @Anum_pg_attribute_attcacheoff, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %14, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @Int32GetDatum(i32 %86)
  %88 = load i32, i32* @Anum_pg_attribute_atttypmod, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %14, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 14
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @BoolGetDatum(i32 %94)
  %96 = load i32, i32* @Anum_pg_attribute_attbyval, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %14, i64 %98
  store i32 %95, i32* %99, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 13
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @CharGetDatum(i32 %102)
  %104 = load i32, i32* @Anum_pg_attribute_attstorage, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %14, i64 %106
  store i32 %103, i32* %107, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 12
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @CharGetDatum(i32 %110)
  %112 = load i32, i32* @Anum_pg_attribute_attalign, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %14, i64 %114
  store i32 %111, i32* %115, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @BoolGetDatum(i32 %118)
  %120 = load i32, i32* @Anum_pg_attribute_attnotnull, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %14, i64 %122
  store i32 %119, i32* %123, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @BoolGetDatum(i32 %126)
  %128 = load i32, i32* @Anum_pg_attribute_atthasdef, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %14, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @BoolGetDatum(i32 %134)
  %136 = load i32, i32* @Anum_pg_attribute_atthasmissing, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %14, i64 %138
  store i32 %135, i32* %139, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @CharGetDatum(i32 %142)
  %144 = load i32, i32* @Anum_pg_attribute_attidentity, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %14, i64 %146
  store i32 %143, i32* %147, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @CharGetDatum(i32 %150)
  %152 = load i32, i32* @Anum_pg_attribute_attgenerated, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %14, i64 %154
  store i32 %151, i32* %155, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @BoolGetDatum(i32 %158)
  %160 = load i32, i32* @Anum_pg_attribute_attisdropped, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %14, i64 %162
  store i32 %159, i32* %163, align 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @BoolGetDatum(i32 %166)
  %168 = load i32, i32* @Anum_pg_attribute_attislocal, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %14, i64 %170
  store i32 %167, i32* %171, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @Int32GetDatum(i32 %174)
  %176 = load i32, i32* @Anum_pg_attribute_attinhcount, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %14, i64 %178
  store i32 %175, i32* %179, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ObjectIdGetDatum(i32 %182)
  %184 = load i32, i32* @Anum_pg_attribute_attcollation, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %14, i64 %186
  store i32 %183, i32* %187, align 4
  %188 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %17, i64 %190
  store i32 1, i32* %191, align 4
  %192 = load i32, i32* @Anum_pg_attribute_attoptions, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %17, i64 %194
  store i32 1, i32* %195, align 4
  %196 = load i32, i32* @Anum_pg_attribute_attfdwoptions, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %17, i64 %198
  store i32 1, i32* %199, align 4
  %200 = load i32, i32* @Anum_pg_attribute_attmissingval, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %17, i64 %202
  store i32 1, i32* %203, align 4
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @RelationGetDescr(i32 %204)
  %206 = call i32 @heap_form_tuple(i32 %205, i32* %14, i32* %17)
  store i32 %206, i32* %10, align 4
  %207 = load i32*, i32** %6, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %214

209:                                              ; preds = %3
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* %10, align 4
  %212 = load i32*, i32** %6, align 8
  %213 = call i32 @CatalogTupleInsertWithInfo(i32 %210, i32 %211, i32* %212)
  br label %218

214:                                              ; preds = %3
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @CatalogTupleInsert(i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %209
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @heap_freetuple(i32 %219)
  %221 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %221)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @NameGetDatum(i32*) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @Int16GetDatum(i32) #2

declare dso_local i32 @BoolGetDatum(i32) #2

declare dso_local i32 @CharGetDatum(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleInsertWithInfo(i32, i32, i32*) #2

declare dso_local i32 @CatalogTupleInsert(i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
