; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_getSchemaData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_getSchemaData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"reading extensions\00", align 1
@numExtensions = common dso_local global i32 0, align 4
@extinfoindex = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"identifying extension members\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"reading schemas\00", align 1
@numNamespaces = common dso_local global i32 0, align 4
@nspinfoindex = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"reading user-defined tables\00", align 1
@numTables = common dso_local global i32 0, align 4
@tblinfoindex = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"reading user-defined functions\00", align 1
@numFuncs = common dso_local global i32 0, align 4
@funinfoindex = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"reading user-defined types\00", align 1
@numTypes = common dso_local global i32 0, align 4
@typinfoindex = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"reading procedural languages\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"reading user-defined aggregate functions\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"reading user-defined operators\00", align 1
@numOperators = common dso_local global i32 0, align 4
@oprinfoindex = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"reading user-defined access methods\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"reading user-defined operator classes\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"reading user-defined operator families\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"reading user-defined text search parsers\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"reading user-defined text search templates\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"reading user-defined text search dictionaries\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"reading user-defined text search configurations\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"reading user-defined foreign-data wrappers\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"reading user-defined foreign servers\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"reading default privileges\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"reading user-defined collations\00", align 1
@numCollations = common dso_local global i32 0, align 4
@collinfoindex = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [33 x i8] c"reading user-defined conversions\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"reading type casts\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"reading transforms\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"reading table inheritance information\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"reading event triggers\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"finding extension tables\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"finding inheritance relationships\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"reading column info for interesting tables\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"flagging inherited columns in subtables\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"reading indexes\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"flagging indexes in partitioned tables\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"reading extended statistics\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"reading constraints\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"reading triggers\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"reading rewrite rules\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"reading policies\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"reading publications\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"reading publication membership\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"reading subscriptions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getSchemaData(%struct.TYPE_42__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_42__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %3, align 8
  store i32* %1, i32** %4, align 8
  %31 = call i32 @pg_log_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %33 = call i32* @getExtensions(%struct.TYPE_42__* %32, i32* @numExtensions)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @numExtensions, align 4
  %36 = call i8* @buildIndexArray(i32* %34, i32 %35, i32 4)
  store i8* %36, i8** @extinfoindex, align 8
  %37 = call i32 @pg_log_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @numExtensions, align 4
  %41 = call i32 @getExtensionMembership(%struct.TYPE_42__* %38, i32* %39, i32 %40)
  %42 = call i32 @pg_log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %44 = call i32* @getNamespaces(%struct.TYPE_42__* %43, i32* @numNamespaces)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* @numNamespaces, align 4
  %47 = call i8* @buildIndexArray(i32* %45, i32 %46, i32 4)
  store i8* %47, i8** @nspinfoindex, align 8
  %48 = call i32 @pg_log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %50 = call i32* @getTables(%struct.TYPE_42__* %49, i32* @numTables)
  store i32* %50, i32** %5, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @numTables, align 4
  %53 = call i8* @buildIndexArray(i32* %51, i32 %52, i32 4)
  store i8* %53, i8** @tblinfoindex, align 8
  %54 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @numTables, align 4
  %57 = call i32 @getOwnedSeqs(%struct.TYPE_42__* %54, i32* %55, i32 %56)
  %58 = call i32 @pg_log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %60 = call i32* @getFuncs(%struct.TYPE_42__* %59, i32* @numFuncs)
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @numFuncs, align 4
  %63 = call i8* @buildIndexArray(i32* %61, i32 %62, i32 4)
  store i8* %63, i8** @funinfoindex, align 8
  %64 = call i32 @pg_log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %66 = call i32* @getTypes(%struct.TYPE_42__* %65, i32* @numTypes)
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @numTypes, align 4
  %69 = call i8* @buildIndexArray(i32* %67, i32 %68, i32 4)
  store i8* %69, i8** @typinfoindex, align 8
  %70 = call i32 @pg_log_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %72 = call i32 @getProcLangs(%struct.TYPE_42__* %71, i32* %16)
  %73 = call i32 @pg_log_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %74 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %75 = call i32 @getAggregates(%struct.TYPE_42__* %74, i32* %13)
  %76 = call i32 @pg_log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %77 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %78 = call i32* @getOperators(%struct.TYPE_42__* %77, i32* @numOperators)
  store i32* %78, i32** %8, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @numOperators, align 4
  %81 = call i8* @buildIndexArray(i32* %79, i32 %80, i32 4)
  store i8* %81, i8** @oprinfoindex, align 8
  %82 = call i32 @pg_log_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %83 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %84 = call i32 @getAccessMethods(%struct.TYPE_42__* %83, i32* %19)
  %85 = call i32 @pg_log_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  %86 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %87 = call i32 @getOpclasses(%struct.TYPE_42__* %86, i32* %20)
  %88 = call i32 @pg_log_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %89 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %90 = call i32 @getOpfamilies(%struct.TYPE_42__* %89, i32* %21)
  %91 = call i32 @pg_log_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %92 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %93 = call i32 @getTSParsers(%struct.TYPE_42__* %92, i32* %23)
  %94 = call i32 @pg_log_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  %95 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %96 = call i32 @getTSTemplates(%struct.TYPE_42__* %95, i32* %24)
  %97 = call i32 @pg_log_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  %98 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %99 = call i32 @getTSDictionaries(%struct.TYPE_42__* %98, i32* %25)
  %100 = call i32 @pg_log_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  %101 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %102 = call i32 @getTSConfigurations(%struct.TYPE_42__* %101, i32* %26)
  %103 = call i32 @pg_log_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  %104 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %105 = call i32 @getForeignDataWrappers(%struct.TYPE_42__* %104, i32* %27)
  %106 = call i32 @pg_log_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  %107 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %108 = call i32 @getForeignServers(%struct.TYPE_42__* %107, i32* %28)
  %109 = call i32 @pg_log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  %110 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %111 = call i32 @getDefaultACLs(%struct.TYPE_42__* %110, i32* %29)
  %112 = call i32 @pg_log_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %113 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %114 = call i32* @getCollations(%struct.TYPE_42__* %113, i32* @numCollations)
  store i32* %114, i32** %9, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* @numCollations, align 4
  %117 = call i8* @buildIndexArray(i32* %115, i32 %116, i32 4)
  store i8* %117, i8** @collinfoindex, align 8
  %118 = call i32 @pg_log_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0))
  %119 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %120 = call i32 @getConversions(%struct.TYPE_42__* %119, i32* %22)
  %121 = call i32 @pg_log_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %122 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %123 = call i32 @getCasts(%struct.TYPE_42__* %122, i32* %17)
  %124 = call i32 @pg_log_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %125 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %126 = call i32 @getTransforms(%struct.TYPE_42__* %125, i32* %18)
  %127 = call i32 @pg_log_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0))
  %128 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %129 = call i32* @getInherits(%struct.TYPE_42__* %128, i32* %14)
  store i32* %129, i32** %12, align 8
  %130 = call i32 @pg_log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %131 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %132 = call i32 @getEventTriggers(%struct.TYPE_42__* %131, i32* %30)
  %133 = call i32 @pg_log_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0))
  %134 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* @numExtensions, align 4
  %137 = call i32 @processExtensionTables(%struct.TYPE_42__* %134, i32* %135, i32 %136)
  %138 = call i32 @pg_log_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0))
  %139 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* @numTables, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @flagInhTables(%struct.TYPE_42__* %139, i32* %140, i32 %141, i32* %142, i32 %143)
  %145 = call i32 @pg_log_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0))
  %146 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* @numTables, align 4
  %149 = call i32 @getTableAttrs(%struct.TYPE_42__* %146, i32* %147, i32 %148)
  %150 = call i32 @pg_log_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0))
  %151 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* @numTables, align 4
  %156 = call i32 @flagInhAttrs(i32 %153, i32* %154, i32 %155)
  %157 = call i32 @pg_log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %158 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = load i32, i32* @numTables, align 4
  %161 = call i32 @getIndexes(%struct.TYPE_42__* %158, i32* %159, i32 %160)
  %162 = call i32 @pg_log_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0))
  %163 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* @numTables, align 4
  %166 = call i32 @flagInhIndexes(%struct.TYPE_42__* %163, i32* %164, i32 %165)
  %167 = call i32 @pg_log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0))
  %168 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %169 = call i32 @getExtendedStatistics(%struct.TYPE_42__* %168)
  %170 = call i32 @pg_log_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0))
  %171 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* @numTables, align 4
  %174 = call i32 @getConstraints(%struct.TYPE_42__* %171, i32* %172, i32 %173)
  %175 = call i32 @pg_log_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0))
  %176 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* @numTables, align 4
  %179 = call i32 @getTriggers(%struct.TYPE_42__* %176, i32* %177, i32 %178)
  %180 = call i32 @pg_log_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0))
  %181 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %182 = call i32 @getRules(%struct.TYPE_42__* %181, i32* %15)
  %183 = call i32 @pg_log_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  %184 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %185 = load i32*, i32** %5, align 8
  %186 = load i32, i32* @numTables, align 4
  %187 = call i32 @getPolicies(%struct.TYPE_42__* %184, i32* %185, i32 %186)
  %188 = call i32 @pg_log_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0))
  %189 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %190 = call i32 @getPublications(%struct.TYPE_42__* %189)
  %191 = call i32 @pg_log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0))
  %192 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %193 = load i32*, i32** %5, align 8
  %194 = load i32, i32* @numTables, align 4
  %195 = call i32 @getPublicationTables(%struct.TYPE_42__* %192, i32* %193, i32 %194)
  %196 = call i32 @pg_log_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0))
  %197 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %198 = call i32 @getSubscriptions(%struct.TYPE_42__* %197)
  %199 = load i32, i32* @numTables, align 4
  %200 = load i32*, i32** %4, align 8
  store i32 %199, i32* %200, align 4
  %201 = load i32*, i32** %5, align 8
  ret i32* %201
}

declare dso_local i32 @pg_log_info(i8*) #1

declare dso_local i32* @getExtensions(%struct.TYPE_42__*, i32*) #1

declare dso_local i8* @buildIndexArray(i32*, i32, i32) #1

declare dso_local i32 @getExtensionMembership(%struct.TYPE_42__*, i32*, i32) #1

declare dso_local i32* @getNamespaces(%struct.TYPE_42__*, i32*) #1

declare dso_local i32* @getTables(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getOwnedSeqs(%struct.TYPE_42__*, i32*, i32) #1

declare dso_local i32* @getFuncs(%struct.TYPE_42__*, i32*) #1

declare dso_local i32* @getTypes(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getProcLangs(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getAggregates(%struct.TYPE_42__*, i32*) #1

declare dso_local i32* @getOperators(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getAccessMethods(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getOpclasses(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getOpfamilies(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getTSParsers(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getTSTemplates(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getTSDictionaries(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getTSConfigurations(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getForeignDataWrappers(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getForeignServers(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getDefaultACLs(%struct.TYPE_42__*, i32*) #1

declare dso_local i32* @getCollations(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getConversions(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getCasts(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getTransforms(%struct.TYPE_42__*, i32*) #1

declare dso_local i32* @getInherits(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getEventTriggers(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @processExtensionTables(%struct.TYPE_42__*, i32*, i32) #1

declare dso_local i32 @flagInhTables(%struct.TYPE_42__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @getTableAttrs(%struct.TYPE_42__*, i32*, i32) #1

declare dso_local i32 @flagInhAttrs(i32, i32*, i32) #1

declare dso_local i32 @getIndexes(%struct.TYPE_42__*, i32*, i32) #1

declare dso_local i32 @flagInhIndexes(%struct.TYPE_42__*, i32*, i32) #1

declare dso_local i32 @getExtendedStatistics(%struct.TYPE_42__*) #1

declare dso_local i32 @getConstraints(%struct.TYPE_42__*, i32*, i32) #1

declare dso_local i32 @getTriggers(%struct.TYPE_42__*, i32*, i32) #1

declare dso_local i32 @getRules(%struct.TYPE_42__*, i32*) #1

declare dso_local i32 @getPolicies(%struct.TYPE_42__*, i32*, i32) #1

declare dso_local i32 @getPublications(%struct.TYPE_42__*) #1

declare dso_local i32 @getPublicationTables(%struct.TYPE_42__*, i32*, i32) #1

declare dso_local i32 @getSubscriptions(%struct.TYPE_42__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
