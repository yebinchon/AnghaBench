; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrddimvar.c_rrddimvar_create_variables.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrddimvar.c_rrddimvar_create_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@RRDDIMVAR_ID_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@RRDVAR_OPTION_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @rrddimvar_create_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rrddimvar_create_variables(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = call i32 @rrddimvar_free_variables(%struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 22
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %3, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  %19 = load i32, i32* @RRDDIMVAR_ID_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i32, i32* @RRDDIMVAR_ID_MAX, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 21
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 20
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintfz(i8* %23, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %32, i32 %35)
  %37 = call i8* @strdupz(i8* %23)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 16
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @RRDDIMVAR_ID_MAX, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 21
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 20
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintfz(i8* %23, i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %48, i32 %51)
  %53 = call i8* @strdupz(i8* %23)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 14
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @RRDDIMVAR_ID_MAX, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 16
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintfz(i8* %23, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* %62)
  %64 = call i8* @strdupz(i8* %23)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 8
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @RRDDIMVAR_ID_MAX, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 14
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintfz(i8* %23, i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %70, i8* %73)
  %75 = call i8* @strdupz(i8* %23)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @RRDDIMVAR_ID_MAX, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 16
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintfz(i8* %23, i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %81, i8* %84)
  %86 = call i8* @strdupz(i8* %23)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 12
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @RRDDIMVAR_ID_MAX, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 14
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintfz(i8* %23, i32 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %92, i8* %95)
  %97 = call i8* @strdupz(i8* %23)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 10
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @RRDDIMVAR_ID_MAX, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 16
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintfz(i8* %23, i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %103, i8* %106)
  %108 = call i8* @strdupz(i8* %23)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* @RRDDIMVAR_ID_MAX, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 14
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i8*, i32, i8*, i32, i8*, ...) @snprintfz(i8* %23, i32 %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %114, i8* %117)
  %119 = call i8* @strdupz(i8* %23)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 16
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @rrdvar_create_and_index(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %123, i8* %126, i32 %129, i32 %130, i32 %133)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 19
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 14
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @rrdvar_create_and_index(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %138, i8* %141, i32 %144, i32 %145, i32 %148)
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 18
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 16
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @rrdvar_create_and_index(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %155, i8* %158, i32 %161, i32 %162, i32 %165)
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 17
  store i8* %166, i8** %168, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 14
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i8* @rrdvar_create_and_index(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %172, i8* %175, i32 %178, i32 %179, i32 %182)
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 15
  store i8* %183, i8** %185, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 12
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @rrdvar_create_and_index(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %189, i8* %192, i32 %195, i32 %196, i32 %199)
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 13
  store i8* %200, i8** %202, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 10
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i8* @rrdvar_create_and_index(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %206, i8* %209, i32 %212, i32 %213, i32 %216)
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 11
  store i8* %217, i8** %219, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 8
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i8* @rrdvar_create_and_index(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %221, i8* %224, i32 %227, i32 %228, i32 %231)
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 9
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 6
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i8* @rrdvar_create_and_index(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %236, i8* %239, i32 %242, i32 %243, i32 %246)
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 7
  store i8* %247, i8** %249, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 4
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i8* @rrdvar_create_and_index(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %251, i8* %254, i32 %257, i32 %258, i32 %261)
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 5
  store i8* %262, i8** %264, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @RRDVAR_OPTION_DEFAULT, align 4
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i8* @rrdvar_create_and_index(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %266, i8* %269, i32 %272, i32 %273, i32 %276)
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 3
  store i8* %277, i8** %279, align 8
  %280 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %280)
  ret void
}

declare dso_local i32 @rrddimvar_free_variables(%struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i8*, ...) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i8* @rrdvar_create_and_index(i8*, i32*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
