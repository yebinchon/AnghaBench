; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3StrAccumEnlarge.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3StrAccumEnlarge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i8*, i8*, i32, i64 }

@STRACCUM_TOOBIG = common dso_local global i64 0, align 8
@STRACCUM_NOMEM = common dso_local global i64 0, align 8
@SQLITE_PRINTF_MALLOCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @sqlite3StrAccumEnlarge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite3StrAccumEnlarge(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STRACCUM_TOOBIG, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @testcase(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STRACCUM_NOMEM, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @testcase(i32 %38)
  store i32 0, i32* %3, align 4
  br label %216

40:                                               ; preds = %2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = sub nsw i64 %52, 1
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = load i64, i64* @STRACCUM_TOOBIG, align 8
  %57 = call i32 @setStrAccumError(%struct.TYPE_6__* %55, i64 %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %3, align 4
  br label %216

59:                                               ; preds = %40
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = call i64 @isMalloced(%struct.TYPE_6__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  br label %68

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i8* [ %66, %63 ], [ null, %67 ]
  store i8* %69, i8** %7, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %68
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = load i8*, i8** %82, align 8
  %84 = icmp eq i8* %80, %83
  br label %85

85:                                               ; preds = %77, %68
  %86 = phi i1 [ true, %68 ], [ %84, %77 ]
  %87 = zext i1 %86 to i32
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = call i64 @isMalloced(%struct.TYPE_6__* %88)
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = icmp eq i32 %87, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp sle i64 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %85
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %8, align 8
  br label %116

116:                                              ; preds = %110, %85
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = call i32 @sqlite3StrAccumReset(%struct.TYPE_6__* %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = load i64, i64* @STRACCUM_TOOBIG, align 8
  %127 = call i32 @setStrAccumError(%struct.TYPE_6__* %125, i64 %126)
  store i32 0, i32* %3, align 4
  br label %216

128:                                              ; preds = %116
  %129 = load i64, i64* %8, align 8
  %130 = trunc i64 %129 to i32
  %131 = sext i32 %130 to i64
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %128
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 7
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i8* @sqlite3DbRealloc(i64 %142, i8* %143, i32 %147)
  store i8* %148, i8** %6, align 8
  br label %156

149:                                              ; preds = %134
  %150 = load i8*, i8** %7, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i8* @sqlite3_realloc64(i8* %150, i32 %154)
  store i8* %155, i8** %6, align 8
  br label %156

156:                                              ; preds = %149, %139
  %157 = load i8*, i8** %6, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %207

159:                                              ; preds = %156
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br label %169

169:                                              ; preds = %164, %159
  %170 = phi i1 [ true, %159 ], [ %168, %164 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %174 = call i64 @isMalloced(%struct.TYPE_6__* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %169
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load i8*, i8** %6, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @memcpy(i8* %182, i8* %185, i64 %188)
  br label %190

190:                                              ; preds = %181, %176, %169
  %191 = load i8*, i8** %6, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 4
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 7
  %196 = load i64, i64* %195, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = call i32 @sqlite3DbMallocSize(i64 %196, i8* %197)
  %199 = sext i32 %198 to i64
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store i64 %199, i64* %201, align 8
  %202 = load i32, i32* @SQLITE_PRINTF_MALLOCED, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %213

207:                                              ; preds = %156
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %209 = call i32 @sqlite3StrAccumReset(%struct.TYPE_6__* %208)
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %211 = load i64, i64* @STRACCUM_NOMEM, align 8
  %212 = call i32 @setStrAccumError(%struct.TYPE_6__* %210, i64 %211)
  store i32 0, i32* %3, align 4
  br label %216

213:                                              ; preds = %190
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %5, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %214, %207, %122, %45, %25
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @setStrAccumError(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @isMalloced(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3StrAccumReset(%struct.TYPE_6__*) #1

declare dso_local i8* @sqlite3DbRealloc(i64, i8*, i32) #1

declare dso_local i8* @sqlite3_realloc64(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sqlite3DbMallocSize(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
