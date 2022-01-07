; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-dictionary.c_main.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-dictionary.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.rusage = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.myvalue = type { i32 }

@DICTIONARY_FLAG_WITH_STATISTICS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot create dictionary.\00", align 1
@RUSAGE_SELF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Inserting %d entries in the dictionary\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Added %d entries in %llu nanoseconds: %llu inserts per second\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c" > Dictionary: %llu inserts, %llu deletes, %llu searches\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Retrieving %d entries from the dictionary\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"ERROR: cannot get value %d from the dictionary\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"ERROR: expected %d but got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"Read %d entries in %llu nanoseconds: %llu searches per second\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Resetting %d entries in the dictionary\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"Reset %d entries in %llu nanoseconds: %llu resets per second\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Searching  %d non-existing entries in the dictionary\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"ERROR: cannot got non-existing value %d from the dictionary\0A\00", align 1
@.str.13 = private unnamed_addr constant [90 x i8] c"Searched %d non-existing entries in %llu nanoseconds: %llu not found searches per second\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Deleting %d entries from the dictionary\0A\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"Deleted %d entries in %llu nanoseconds: %llu deletes per second\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Destroying dictionary\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Destroyed in %llu nanoseconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.rusage, align 8
  %8 = alloca %struct.rusage, align 8
  %9 = alloca i64, align 8
  %10 = alloca [101 x i8], align 16
  %11 = alloca %struct.myvalue, align 4
  %12 = alloca %struct.myvalue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* @DICTIONARY_FLAG_WITH_STATISTICS, align 4
  %24 = call %struct.TYPE_11__* @dictionary_create(i32 %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %6, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  store i32 30000000, i32* %14, align 4
  %30 = load i32, i32* @RUSAGE_SELF, align 4
  %31 = call i32 @getrusage(i32 %30, %struct.rusage* %7)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %60, %29
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = getelementptr inbounds %struct.myvalue, %struct.myvalue* %11, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds [101 x i8], [101 x i8]* %10, i64 0, i64 0
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @snprintf(i8* %54, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds [101 x i8], [101 x i8]* %10, i64 0, i64 0
  %59 = call i32 @dictionary_set(%struct.TYPE_11__* %57, i8* %58, %struct.myvalue* %11, i32 4)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %47

63:                                               ; preds = %47
  %64 = load i32, i32* @RUSAGE_SELF, align 4
  %65 = call i32 @getrusage(i32 %64, %struct.rusage* %8)
  %66 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = mul i64 %68, 1000000
  %70 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %69, %72
  %74 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = mul i64 %76, 1000000
  %78 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %77, %80
  %82 = sub i64 %73, %81
  store i64 %82, i64* %9, align 8
  %83 = load i32, i32* @stderr, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 1000000
  %89 = load i64, i64* %9, align 8
  %90 = udiv i64 %88, %89
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %84, i64 %85, i64 %90)
  %92 = load i32, i32* @stderr, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %97, i64 %102, i64 %107)
  %109 = load i32, i32* @RUSAGE_SELF, align 4
  %110 = call i32 @getrusage(i32 %109, %struct.rusage* %7)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* @stderr, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %160, %63
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %126
  %131 = load i32, i32* %13, align 4
  %132 = getelementptr inbounds %struct.myvalue, %struct.myvalue* %11, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = getelementptr inbounds [101 x i8], [101 x i8]* %10, i64 0, i64 0
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @snprintf(i8* %133, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds [101 x i8], [101 x i8]* %10, i64 0, i64 0
  %138 = call %struct.myvalue* @dictionary_get(%struct.TYPE_11__* %136, i8* %137)
  store %struct.myvalue* %138, %struct.myvalue** %12, align 8
  %139 = load %struct.myvalue*, %struct.myvalue** %12, align 8
  %140 = icmp ne %struct.myvalue* %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %130
  %142 = load i32, i32* @stderr, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  br label %159

145:                                              ; preds = %130
  %146 = load %struct.myvalue*, %struct.myvalue** %12, align 8
  %147 = getelementptr inbounds %struct.myvalue, %struct.myvalue* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load i32, i32* @stderr, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.myvalue*, %struct.myvalue** %12, align 8
  %155 = getelementptr inbounds %struct.myvalue, %struct.myvalue* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %151, %145
  br label %159

159:                                              ; preds = %158, %141
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  br label %126

163:                                              ; preds = %126
  %164 = load i32, i32* @RUSAGE_SELF, align 4
  %165 = call i32 @getrusage(i32 %164, %struct.rusage* %8)
  %166 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = mul i64 %168, 1000000
  %170 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %169, %172
  %174 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = mul i64 %176, 1000000
  %178 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %177, %180
  %182 = sub i64 %173, %181
  store i64 %182, i64* %9, align 8
  %183 = load i32, i32* @stderr, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i64, i64* %9, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 1000000
  %189 = load i64, i64* %9, align 8
  %190 = udiv i64 %188, %189
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %183, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i32 %184, i64 %185, i64 %190)
  %192 = load i32, i32* @stderr, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %197, i64 %202, i64 %207)
  %209 = load i32, i32* @RUSAGE_SELF, align 4
  %210 = call i32 @getrusage(i32 %209, %struct.rusage* %7)
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  store i64 0, i64* %214, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  store i64 0, i64* %218, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  store i64 0, i64* %222, align 8
  %223 = load i32, i32* @stderr, align 4
  %224 = load i32, i32* %14, align 4
  %225 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %224)
  store i32 0, i32* %13, align 4
  br label %226

226:                                              ; preds = %239, %163
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %226
  %231 = load i32, i32* %13, align 4
  %232 = getelementptr inbounds %struct.myvalue, %struct.myvalue* %11, i32 0, i32 0
  store i32 %231, i32* %232, align 4
  %233 = getelementptr inbounds [101 x i8], [101 x i8]* %10, i64 0, i64 0
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @snprintf(i8* %233, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %234)
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %237 = getelementptr inbounds [101 x i8], [101 x i8]* %10, i64 0, i64 0
  %238 = call i32 @dictionary_set(%struct.TYPE_11__* %236, i8* %237, %struct.myvalue* %11, i32 4)
  br label %239

239:                                              ; preds = %230
  %240 = load i32, i32* %13, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %13, align 4
  br label %226

242:                                              ; preds = %226
  %243 = load i32, i32* @RUSAGE_SELF, align 4
  %244 = call i32 @getrusage(i32 %243, %struct.rusage* %8)
  %245 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = mul i64 %247, 1000000
  %249 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = add i64 %248, %251
  %253 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = mul i64 %255, 1000000
  %257 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = add i64 %256, %259
  %261 = sub i64 %252, %260
  store i64 %261, i64* %9, align 8
  %262 = load i32, i32* @stderr, align 4
  %263 = load i32, i32* %14, align 4
  %264 = load i64, i64* %9, align 8
  %265 = load i32, i32* %14, align 4
  %266 = sext i32 %265 to i64
  %267 = mul i64 %266, 1000000
  %268 = load i64, i64* %9, align 8
  %269 = udiv i64 %267, %268
  %270 = call i32 (i32, i8*, ...) @fprintf(i32 %262, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 %263, i64 %264, i64 %269)
  %271 = load i32, i32* @stderr, align 4
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = call i32 (i32, i8*, ...) @fprintf(i32 %271, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %276, i64 %281, i64 %286)
  %288 = load i32, i32* @RUSAGE_SELF, align 4
  %289 = call i32 @getrusage(i32 %288, %struct.rusage* %7)
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  store i64 0, i64* %293, align 8
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  store i64 0, i64* %297, align 8
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  store i64 0, i64* %301, align 8
  %302 = load i32, i32* @stderr, align 4
  %303 = load i32, i32* %14, align 4
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %302, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %303)
  %305 = load i32, i32* %14, align 4
  %306 = mul nsw i32 %305, 2
  store i32 %306, i32* %15, align 4
  %307 = load i32, i32* %14, align 4
  store i32 %307, i32* %13, align 4
  br label %308

308:                                              ; preds = %328, %242
  %309 = load i32, i32* %13, align 4
  %310 = load i32, i32* %15, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %331

312:                                              ; preds = %308
  %313 = load i32, i32* %13, align 4
  %314 = getelementptr inbounds %struct.myvalue, %struct.myvalue* %11, i32 0, i32 0
  store i32 %313, i32* %314, align 4
  %315 = getelementptr inbounds [101 x i8], [101 x i8]* %10, i64 0, i64 0
  %316 = load i32, i32* %13, align 4
  %317 = call i32 @snprintf(i8* %315, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %316)
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %319 = getelementptr inbounds [101 x i8], [101 x i8]* %10, i64 0, i64 0
  %320 = call %struct.myvalue* @dictionary_get(%struct.TYPE_11__* %318, i8* %319)
  store %struct.myvalue* %320, %struct.myvalue** %12, align 8
  %321 = load %struct.myvalue*, %struct.myvalue** %12, align 8
  %322 = icmp ne %struct.myvalue* %321, null
  br i1 %322, label %323, label %327

323:                                              ; preds = %312
  %324 = load i32, i32* @stderr, align 4
  %325 = load i32, i32* %13, align 4
  %326 = call i32 (i32, i8*, ...) @fprintf(i32 %324, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %323, %312
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %13, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %13, align 4
  br label %308

331:                                              ; preds = %308
  %332 = load i32, i32* @RUSAGE_SELF, align 4
  %333 = call i32 @getrusage(i32 %332, %struct.rusage* %8)
  %334 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = mul i64 %336, 1000000
  %338 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = add i64 %337, %340
  %342 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = mul i64 %344, 1000000
  %346 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = add i64 %345, %348
  %350 = sub i64 %341, %349
  store i64 %350, i64* %9, align 8
  %351 = load i32, i32* @stderr, align 4
  %352 = load i32, i32* %14, align 4
  %353 = load i64, i64* %9, align 8
  %354 = load i32, i32* %14, align 4
  %355 = sext i32 %354 to i64
  %356 = mul i64 %355, 1000000
  %357 = load i64, i64* %9, align 8
  %358 = udiv i64 %356, %357
  %359 = call i32 (i32, i8*, ...) @fprintf(i32 %351, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.13, i64 0, i64 0), i32 %352, i64 %353, i64 %358)
  %360 = load i32, i32* @stderr, align 4
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 0
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = call i32 (i32, i8*, ...) @fprintf(i32 %360, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %365, i64 %370, i64 %375)
  %377 = load i32, i32* @RUSAGE_SELF, align 4
  %378 = call i32 @getrusage(i32 %377, %struct.rusage* %7)
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 2
  store i64 0, i64* %382, align 8
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 1
  store i64 0, i64* %386, align 8
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  store i64 0, i64* %390, align 8
  %391 = load i32, i32* @stderr, align 4
  %392 = load i32, i32* %14, align 4
  %393 = call i32 (i32, i8*, ...) @fprintf(i32 %391, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %392)
  store i32 0, i32* %13, align 4
  br label %394

394:                                              ; preds = %407, %331
  %395 = load i32, i32* %13, align 4
  %396 = load i32, i32* %14, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %410

398:                                              ; preds = %394
  %399 = load i32, i32* %13, align 4
  %400 = getelementptr inbounds %struct.myvalue, %struct.myvalue* %11, i32 0, i32 0
  store i32 %399, i32* %400, align 4
  %401 = getelementptr inbounds [101 x i8], [101 x i8]* %10, i64 0, i64 0
  %402 = load i32, i32* %13, align 4
  %403 = call i32 @snprintf(i8* %401, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %402)
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %405 = getelementptr inbounds [101 x i8], [101 x i8]* %10, i64 0, i64 0
  %406 = call i32 @dictionary_del(%struct.TYPE_11__* %404, i8* %405)
  br label %407

407:                                              ; preds = %398
  %408 = load i32, i32* %13, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %13, align 4
  br label %394

410:                                              ; preds = %394
  %411 = load i32, i32* @RUSAGE_SELF, align 4
  %412 = call i32 @getrusage(i32 %411, %struct.rusage* %8)
  %413 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = mul i64 %415, 1000000
  %417 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = add i64 %416, %419
  %421 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = mul i64 %423, 1000000
  %425 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = add i64 %424, %427
  %429 = sub i64 %420, %428
  store i64 %429, i64* %9, align 8
  %430 = load i32, i32* @stderr, align 4
  %431 = load i32, i32* %14, align 4
  %432 = load i64, i64* %9, align 8
  %433 = load i32, i32* %14, align 4
  %434 = sext i32 %433 to i64
  %435 = mul i64 %434, 1000000
  %436 = load i64, i64* %9, align 8
  %437 = udiv i64 %435, %436
  %438 = call i32 (i32, i8*, ...) @fprintf(i32 %430, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0), i32 %431, i64 %432, i64 %437)
  %439 = load i32, i32* @stderr, align 4
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_10__*, %struct.TYPE_10__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 0
  %447 = load %struct.TYPE_10__*, %struct.TYPE_10__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_10__*, %struct.TYPE_10__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 2
  %454 = load i64, i64* %453, align 8
  %455 = call i32 (i32, i8*, ...) @fprintf(i32 %439, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %444, i64 %449, i64 %454)
  %456 = load i32, i32* @RUSAGE_SELF, align 4
  %457 = call i32 @getrusage(i32 %456, %struct.rusage* %7)
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_10__*, %struct.TYPE_10__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 2
  store i64 0, i64* %461, align 8
  %462 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %462, i32 0, i32 0
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 1
  store i64 0, i64* %465, align 8
  %466 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %466, i32 0, i32 0
  %468 = load %struct.TYPE_10__*, %struct.TYPE_10__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 0
  store i64 0, i64* %469, align 8
  %470 = load i32, i32* @stderr, align 4
  %471 = call i32 (i32, i8*, ...) @fprintf(i32 %470, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %472 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %473 = call i32 @dictionary_destroy(%struct.TYPE_11__* %472)
  %474 = load i32, i32* @RUSAGE_SELF, align 4
  %475 = call i32 @getrusage(i32 %474, %struct.rusage* %8)
  %476 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = mul i64 %478, 1000000
  %480 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = add i64 %479, %482
  %484 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = mul i64 %486, 1000000
  %488 = getelementptr inbounds %struct.rusage, %struct.rusage* %7, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 1
  %490 = load i64, i64* %489, align 8
  %491 = add i64 %487, %490
  %492 = sub i64 %483, %491
  store i64 %492, i64* %9, align 8
  %493 = load i32, i32* @stderr, align 4
  %494 = load i64, i64* %9, align 8
  %495 = call i32 (i32, i8*, ...) @fprintf(i32 %493, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i64 %494)
  ret i32 0
}

declare dso_local %struct.TYPE_11__* @dictionary_create(i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @dictionary_set(%struct.TYPE_11__*, i8*, %struct.myvalue*, i32) #1

declare dso_local %struct.myvalue* @dictionary_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @dictionary_del(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @dictionary_destroy(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
