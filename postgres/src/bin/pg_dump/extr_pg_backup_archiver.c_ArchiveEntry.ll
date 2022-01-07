; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_ArchiveEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_ArchiveEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, i32, i32, i64, i32*, i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i64, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i32 (%struct.TYPE_10__*, %struct.TYPE_8__*)*, %struct.TYPE_8__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ArchiveEntry(i32* %0, i32 %1, i64 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %9, align 8
  %13 = call i64 @pg_malloc0(i32 160)
  %14 = inttoptr i64 %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 19
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 19
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 20
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 19
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 20
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 19
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 18
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 17
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 13
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 16
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 12
  %66 = load i64, i64* %65, align 8
  %67 = call i32* @pg_strdup(i64 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 15
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 11
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %28
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  %78 = call i32* @pg_strdup(i64 %77)
  br label %80

79:                                               ; preds = %28
  br label %80

80:                                               ; preds = %79, %74
  %81 = phi i32* [ %78, %74 ], [ null, %79 ]
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 14
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 10
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = call i32* @pg_strdup(i64 %91)
  br label %94

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i32* [ %92, %88 ], [ null, %93 ]
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 13
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 9
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = call i32* @pg_strdup(i64 %105)
  br label %108

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %102
  %109 = phi i32* [ %106, %102 ], [ null, %107 ]
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 12
  store i32* %109, i32** %111, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = call i32* @pg_strdup(i64 %119)
  br label %122

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121, %116
  %123 = phi i32* [ %120, %116 ], [ null, %121 ]
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 11
  store i32* %123, i32** %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = call i32* @pg_strdup(i64 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 10
  store i32* %129, i32** %131, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %122
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = call i32* @pg_strdup(i64 %139)
  br label %142

141:                                              ; preds = %122
  br label %142

142:                                              ; preds = %141, %136
  %143 = phi i32* [ %140, %136 ], [ null, %141 ]
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 9
  store i32* %143, i32** %145, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = call i32* @pg_strdup(i64 %153)
  br label %156

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155, %150
  %157 = phi i32* [ %154, %150 ], [ null, %155 ]
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 8
  store i32* %157, i32** %159, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %156
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = call i32* @pg_strdup(i64 %167)
  br label %170

169:                                              ; preds = %156
  br label %170

170:                                              ; preds = %169, %164
  %171 = phi i32* [ %168, %164 ], [ null, %169 ]
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 7
  store i32* %171, i32** %173, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %207

178:                                              ; preds = %170
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = mul i64 %182, 8
  %184 = trunc i64 %183 to i32
  %185 = call i64 @pg_malloc(i32 %184)
  %186 = inttoptr i64 %185 to i64*
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i64* %186, i64** %188, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = mul i64 %198, 8
  %200 = trunc i64 %199 to i32
  %201 = call i32 @memcpy(i64* %191, i32 %194, i32 %200)
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 8
  br label %212

207:                                              ; preds = %170
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  store i64* null, i64** %209, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  store i32 0, i32* %211, align 8
  br label %212

212:                                              ; preds = %207, %178
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 6
  store i64 %215, i64* %217, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 1, i32 0
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 4
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 4
  store i32* null, i32** %232, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 3
  store i64 0, i64* %234, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load i32 (%struct.TYPE_10__*, %struct.TYPE_8__*)*, i32 (%struct.TYPE_10__*, %struct.TYPE_8__*)** %236, align 8
  %238 = icmp ne i32 (%struct.TYPE_10__*, %struct.TYPE_8__*)* %237, null
  br i1 %238, label %239, label %246

239:                                              ; preds = %212
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = load i32 (%struct.TYPE_10__*, %struct.TYPE_8__*)*, i32 (%struct.TYPE_10__*, %struct.TYPE_8__*)** %241, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %245 = call i32 %242(%struct.TYPE_10__* %243, %struct.TYPE_8__* %244)
  br label %246

246:                                              ; preds = %239, %212
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  ret %struct.TYPE_8__* %247
}

declare dso_local i64 @pg_malloc0(i32) #1

declare dso_local i32* @pg_strdup(i64) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
