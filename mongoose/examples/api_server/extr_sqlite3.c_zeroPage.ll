; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_zeroPage.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_zeroPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64, i64, i64, i8*, i8*, i64, i32, i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@BTS_SECURE_DELETE = common dso_local global i32 0, align 4
@PTF_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @zeroPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zeroPage(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 12
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @sqlite3PagerPagenumber(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @sqlite3PagerGetExtra(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = bitcast %struct.TYPE_5__* %32 to i8*
  %34 = icmp eq i8* %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @sqlite3PagerGetData(i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = icmp eq i8* %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sqlite3PagerIswriteable(i32 %47)
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sqlite3_mutex_held(i32 %52)
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BTS_SECURE_DELETE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %2
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memset(i8* %64, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %61, %2
  %73 = load i32, i32* %4, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 %74, i8* %77, align 1
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 8
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @PTF_LEAF, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = mul nsw i32 4, %85
  %87 = sext i32 %86 to i64
  %88 = add i64 %79, %87
  store i64 %88, i64* %8, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, 1
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = call i32 @memset(i8* %92, i32 0, i32 4)
  %94 = load i8*, i8** %5, align 8
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 7
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %5, align 8
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, 5
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @put2byte(i8* %101, i64 %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = sub i64 %108, %109
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @decodeFlags(%struct.TYPE_5__* %113, i32 %114)
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 6
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 10
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp sge i32 %138, 512
  br i1 %139, label %140, label %145

140:                                              ; preds = %72
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp sle i32 %143, 65536
  br label %145

145:                                              ; preds = %140, %72
  %146 = phi i1 [ false, %72 ], [ %144, %140 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 7
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 9
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 8
  store i32 1, i32* %159, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3PagerPagenumber(i32) #1

declare dso_local i8* @sqlite3PagerGetExtra(i32) #1

declare dso_local i8* @sqlite3PagerGetData(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put2byte(i8*, i64) #1

declare dso_local i32 @decodeFlags(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
