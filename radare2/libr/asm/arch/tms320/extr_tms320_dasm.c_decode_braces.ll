; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_braces.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_braces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"[(saturate]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")[\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"(saturate\00", align 1
@R = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"[rnd(]\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"rnd(\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@u = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"[uns(]\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"uns(\00", align 1
@uu = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"[)]\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"[]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_braces(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @strstr(i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = load i32, i32* @R, align 4
  %21 = call i64 @field_valid(%struct.TYPE_5__* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strstr(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %23
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = load i32, i32* @R, align 4
  %34 = call i32 @field_value(%struct.TYPE_5__* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %38 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = load i32, i32* @R, align 4
  %44 = call i32 @field_value(%struct.TYPE_5__* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %48 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %30, %23
  br label %50

50:                                               ; preds = %49, %18
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = load i32, i32* @u, align 4
  %53 = call i64 @field_valid(%struct.TYPE_5__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i8* %59, i8** %3, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %81

62:                                               ; preds = %55
  %63 = load i8*, i8** %3, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = load i32, i32* @u, align 4
  %66 = call i32 @field_value(%struct.TYPE_5__* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %70 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = load i32, i32* @u, align 4
  %76 = call i32 @field_value(%struct.TYPE_5__* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %80 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %62, %55
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = load i32, i32* @uu, align 4
  %85 = call i64 @field_valid(%struct.TYPE_5__* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %192

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @strstr(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %92 = icmp ne i8* %91, null
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %4, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = load i32, i32* @uu, align 4
  %101 = call i32 @field_value(%struct.TYPE_5__* %99, i32 %100)
  %102 = and i32 %101, 2
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %106 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %111 = load i32, i32* @uu, align 4
  %112 = call i32 @field_value(%struct.TYPE_5__* %110, i32 %111)
  %113 = and i32 %112, 2
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %117 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %87
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %125 = load i32, i32* @uu, align 4
  %126 = call i32 @field_value(%struct.TYPE_5__* %124, i32 %125)
  %127 = and i32 %126, 2
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %131 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %136 = load i32, i32* @uu, align 4
  %137 = call i32 @field_value(%struct.TYPE_5__* %135, i32 %136)
  %138 = and i32 %137, 2
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %142 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %120, %87
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = load i32, i32* @uu, align 4
  %149 = call i32 @field_value(%struct.TYPE_5__* %147, i32 %148)
  %150 = and i32 %149, 1
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %154 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %153)
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %159 = load i32, i32* @uu, align 4
  %160 = call i32 @field_value(%struct.TYPE_5__* %158, i32 %159)
  %161 = and i32 %160, 1
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %165 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %164)
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %191

168:                                              ; preds = %143
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %173 = load i32, i32* @uu, align 4
  %174 = call i32 @field_value(%struct.TYPE_5__* %172, i32 %173)
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %179 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %178)
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %184 = load i32, i32* @uu, align 4
  %185 = call i32 @field_value(%struct.TYPE_5__* %183, i32 %184)
  %186 = and i32 %185, 1
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %190 = call i32 (i8*, i8*, i8*, ...) @replace(i8* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %189)
  br label %191

191:                                              ; preds = %168, %143
  br label %192

192:                                              ; preds = %191, %82
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @substitute(i8* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @replace(i8*, i8*, i8*, ...) #1

declare dso_local i64 @field_valid(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @field_value(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @substitute(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
