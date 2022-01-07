; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_get_db_info.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_dbcommands.c_get_db_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DatabaseRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_database_datname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@DatabaseNameIndexId = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@DATABASEOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i8**)* @get_db_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_db_info(i8* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i8** %11, i8** %12) #0 {
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store i32* %5, i32** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i8** %11, i8*** %25, align 8
  store i8** %12, i8*** %26, align 8
  store i32 0, i32* %27, align 4
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @AssertArg(i8* %34)
  %36 = load i32, i32* @DatabaseRelationId, align 4
  %37 = load i32, i32* @AccessShareLock, align 4
  %38 = call i32 @table_open(i32 %36, i32 %37)
  store i32 %38, i32* %28, align 4
  br label %39

39:                                               ; preds = %197, %13
  %40 = load i32, i32* @Anum_pg_database_datname, align 4
  %41 = load i32, i32* @BTEqualStrategyNumber, align 4
  %42 = load i32, i32* @F_NAMEEQ, align 4
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 @CStringGetDatum(i8* %43)
  %45 = call i32 @ScanKeyInit(i32* %29, i32 %40, i32 %41, i32 %42, i32 %44)
  %46 = load i32, i32* %28, align 4
  %47 = load i32, i32* @DatabaseNameIndexId, align 4
  %48 = call i32 @systable_beginscan(i32 %46, i32 %47, i32 1, i32* null, i32 1, i32* %29)
  store i32 %48, i32* %30, align 4
  %49 = load i32, i32* %30, align 4
  %50 = call i32 @systable_getnext(i32 %49)
  store i32 %50, i32* %31, align 4
  %51 = load i32, i32* %31, align 4
  %52 = call i64 @HeapTupleIsValid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %30, align 4
  %56 = call i32 @systable_endscan(i32 %55)
  br label %198

57:                                               ; preds = %39
  %58 = load i32, i32* %31, align 4
  %59 = call i64 @GETSTRUCT(i32 %58)
  %60 = inttoptr i64 %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %32, align 4
  %63 = load i32, i32* %30, align 4
  %64 = call i32 @systable_endscan(i32 %63)
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @NoLock, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load i32, i32* @DatabaseRelationId, align 4
  %70 = load i32, i32* %32, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @LockSharedObject(i32 %69, i32 %70, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %68, %57
  %74 = load i32, i32* @DATABASEOID, align 4
  %75 = load i32, i32* %32, align 4
  %76 = call i32 @ObjectIdGetDatum(i32 %75)
  %77 = call i32 @SearchSysCache1(i32 %74, i32 %76)
  store i32 %77, i32* %31, align 4
  %78 = load i32, i32* %31, align 4
  %79 = call i64 @HeapTupleIsValid(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %188

81:                                               ; preds = %73
  %82 = load i32, i32* %31, align 4
  %83 = call i64 @GETSTRUCT(i32 %82)
  %84 = inttoptr i64 %83 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %84, %struct.TYPE_2__** %33, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @NameStr(i32 %88)
  %90 = call i64 @strcmp(i8* %85, i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %185

92:                                               ; preds = %81
  %93 = load i32*, i32** %16, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %32, align 4
  %97 = load i32*, i32** %16, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32*, i32** %17, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %17, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i32*, i32** %18, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %18, align 8
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %106
  %115 = load i32*, i32** %19, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %19, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i32*, i32** %20, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %20, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i32*, i32** %21, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %21, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %133, %130
  %139 = load i32*, i32** %22, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %22, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %141, %138
  %147 = load i32*, i32** %23, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %23, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %146
  %155 = load i32*, i32** %24, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %24, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %154
  %163 = load i8**, i8*** %25, align 8
  %164 = icmp ne i8** %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @NameStr(i32 %168)
  %170 = call i8* @pstrdup(i32 %169)
  %171 = load i8**, i8*** %25, align 8
  store i8* %170, i8** %171, align 8
  br label %172

172:                                              ; preds = %165, %162
  %173 = load i8**, i8*** %26, align 8
  %174 = icmp ne i8** %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @NameStr(i32 %178)
  %180 = call i8* @pstrdup(i32 %179)
  %181 = load i8**, i8*** %26, align 8
  store i8* %180, i8** %181, align 8
  br label %182

182:                                              ; preds = %175, %172
  %183 = load i32, i32* %31, align 4
  %184 = call i32 @ReleaseSysCache(i32 %183)
  store i32 1, i32* %27, align 4
  br label %198

185:                                              ; preds = %81
  %186 = load i32, i32* %31, align 4
  %187 = call i32 @ReleaseSysCache(i32 %186)
  br label %188

188:                                              ; preds = %185, %73
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* @NoLock, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load i32, i32* @DatabaseRelationId, align 4
  %194 = load i32, i32* %32, align 4
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @UnlockSharedObject(i32 %193, i32 %194, i32 0, i32 %195)
  br label %197

197:                                              ; preds = %192, %188
  br label %39

198:                                              ; preds = %182, %54
  %199 = load i32, i32* %28, align 4
  %200 = load i32, i32* @AccessShareLock, align 4
  %201 = call i32 @table_close(i32 %199, i32 %200)
  %202 = load i32, i32* %27, align 4
  ret i32 %202
}

declare dso_local i32 @AssertArg(i8*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @LockSharedObject(i32, i32, i32, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @UnlockSharedObject(i32, i32, i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
