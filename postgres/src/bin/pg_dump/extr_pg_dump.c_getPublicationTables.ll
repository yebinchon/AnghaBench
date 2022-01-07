; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getPublicationTables.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getPublicationTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__*, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_23__, %struct.TYPE_29__*, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i8*, i8* }

@RELKIND_RELATION = common dso_local global i64 0, align 8
@DUMP_COMPONENT_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"reading publication membership for table \22%s.%s\22\00", align 1
@.str.1 = private unnamed_addr constant [131 x i8] c"SELECT pr.tableoid, pr.oid, p.pubname FROM pg_publication_rel pr, pg_publication p WHERE pr.prrelid = '%u'  AND p.oid = pr.prpubid\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pubname\00", align 1
@DO_PUBLICATION_REL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getPublicationTables(%struct.TYPE_22__* %0, %struct.TYPE_29__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  store %struct.TYPE_32__* %20, %struct.TYPE_32__** %10, align 8
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 100000
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %3
  br label %201

31:                                               ; preds = %25
  %32 = call %struct.TYPE_31__* (...) @createPQExpBuffer()
  store %struct.TYPE_31__* %32, %struct.TYPE_31__** %7, align 8
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %195, %31
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %198

37:                                               ; preds = %33
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i64 %40
  store %struct.TYPE_29__* %41, %struct.TYPE_29__** %17, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RELKIND_RELATION, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %195

48:                                               ; preds = %37
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DUMP_COMPONENT_DEFINITION, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %195

57:                                               ; preds = %48
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pg_log_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %71 = call i32 @resetPQExpBuffer(%struct.TYPE_31__* %70)
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @appendPQExpBuffer(%struct.TYPE_31__* %72, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %84 = call i32* @ExecuteSqlQuery(%struct.TYPE_22__* %79, i32 %82, i32 %83)
  store i32* %84, i32** %8, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @PQntuples(i32* %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %57
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @PQclear(i32* %90)
  br label %195

92:                                               ; preds = %57
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @PQfnumber(i32* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %94, i32* %11, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @PQfnumber(i32* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %96, i32* %12, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @PQfnumber(i32* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 56
  %102 = trunc i64 %101 to i32
  %103 = call %struct.TYPE_30__* @pg_malloc(i32 %102)
  store %struct.TYPE_30__* %103, %struct.TYPE_30__** %9, align 8
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %189, %92
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %192

108:                                              ; preds = %104
  %109 = load i32, i32* @DO_PUBLICATION_REL, align 4
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 3
  store i32 %109, i32* %115, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @PQgetvalue(i32* %116, i32 %117, i32 %118)
  %120 = call i8* @atooid(i32 %119)
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 1
  store i8* %120, i8** %127, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @PQgetvalue(i32* %128, i32 %129, i32 %130)
  %132 = call i8* @atooid(i32 %131)
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  store i8* %132, i8** %139, align 8
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %143, i32 0, i32 0
  %145 = call i32 @AssignDumpId(%struct.TYPE_23__* %144)
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %148, align 8
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 1
  store %struct.TYPE_27__* %149, %struct.TYPE_27__** %155, align 8
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  store i32 %159, i32* %165, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @PQgetvalue(i32* %166, i32 %167, i32 %168)
  %170 = call i32 @pg_strdup(i32 %169)
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 2
  store i32 %170, i32* %175, align 8
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 1
  store %struct.TYPE_29__* %176, %struct.TYPE_29__** %181, align 8
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %188 = call i32 @selectDumpablePublicationTable(%struct.TYPE_23__* %186, %struct.TYPE_22__* %187)
  br label %189

189:                                              ; preds = %108
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %15, align 4
  br label %104

192:                                              ; preds = %104
  %193 = load i32*, i32** %8, align 8
  %194 = call i32 @PQclear(i32* %193)
  br label %195

195:                                              ; preds = %192, %89, %56, %47
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %33

198:                                              ; preds = %33
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %200 = call i32 @destroyPQExpBuffer(%struct.TYPE_31__* %199)
  br label %201

201:                                              ; preds = %198, %30
  ret void
}

declare dso_local %struct.TYPE_31__* @createPQExpBuffer(...) #1

declare dso_local i32 @pg_log_info(i8*, i32, i32) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_31__*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_31__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local %struct.TYPE_30__* @pg_malloc(i32) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_23__*) #1

declare dso_local i32 @pg_strdup(i32) #1

declare dso_local i32 @selectDumpablePublicationTable(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
