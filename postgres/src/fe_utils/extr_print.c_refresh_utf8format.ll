; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_refresh_utf8format.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_refresh_utf8format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i8*, i32*, i32* }
%struct.TYPE_13__ = type { i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }

@pg_utf8format = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"unicode\00", align 1
@unicode_style = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@PRINT_RULE_TOP = common dso_local global i64 0, align 8
@PRINT_RULE_MIDDLE = common dso_local global i64 0, align 8
@PRINT_RULE_BOTTOM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PRINT_RULE_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refresh_utf8format(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store %struct.TYPE_14__* @pg_utf8format, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @unicode_style, i32 0, i32 9), align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i64 %12
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @unicode_style, i32 0, i32 8), align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 %17
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @unicode_style, i32 0, i32 7), align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 %22
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %6, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 11
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load i64, i64* @PRINT_RULE_TOP, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i8* %26, i8** %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 11
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load i64, i64* @PRINT_RULE_TOP, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  store i32 %35, i32* %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 11
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load i64, i64* @PRINT_RULE_TOP, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  store i32 %49, i32* %55, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 11
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load i64, i64* @PRINT_RULE_TOP, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32 %58, i32* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 11
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load i64, i64* @PRINT_RULE_MIDDLE, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i8* %67, i8** %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 11
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i64, i64* @PRINT_RULE_MIDDLE, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  store i32 %81, i32* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 11
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load i64, i64* @PRINT_RULE_MIDDLE, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  store i32 %95, i32* %101, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 11
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load i64, i64* @PRINT_RULE_MIDDLE, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i32 %109, i32* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 11
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = load i64, i64* @PRINT_RULE_BOTTOM, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i8* %118, i8** %124, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 11
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load i64, i64* @PRINT_RULE_BOTTOM, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  store i32 %127, i32* %133, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 11
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = load i64, i64* @PRINT_RULE_BOTTOM, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  store i32 %141, i32* %147, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 11
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = load i64, i64* @PRINT_RULE_BOTTOM, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  store i32 %150, i32* %156, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 11
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = load i64, i64* @PRINT_RULE_DATA, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %162, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 11
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load i64, i64* @PRINT_RULE_DATA, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  store i32 %165, i32* %171, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 11
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = load i64, i64* @PRINT_RULE_DATA, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  store i32 %174, i32* %180, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 11
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = load i64, i64* @PRINT_RULE_DATA, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  store i32 %183, i32* %189, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 10
  store i32 %192, i32* %194, align 4
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 9
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 8
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @unicode_style, i32 0, i32 6), align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @unicode_style, i32 0, i32 5), align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @unicode_style, i32 0, i32 4), align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 5
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @unicode_style, i32 0, i32 3), align 4
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 4
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @unicode_style, i32 0, i32 2), align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @unicode_style, i32 0, i32 1), align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @unicode_style, i32 0, i32 0), align 8
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
