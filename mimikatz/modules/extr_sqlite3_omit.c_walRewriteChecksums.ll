; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_walRewriteChecksums.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_walRewriteChecksums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8** }

@SQLITE_OK = common dso_local global i32 0, align 4
@WAL_FRAME_HDRSIZE = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @walRewriteChecksums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walRewriteChecksums(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32* @sqlite3_malloc(i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %137

33:                                               ; preds = %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 24, i32* %12, align 4
  br label %53

45:                                               ; preds = %33
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @walFrameOffset(i32 %49, i32 %50)
  %52 = add nsw i32 %51, 16
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %45, %44
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @sqlite3OsRead(i32 %56, i32* %57, i32 8, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i8* @sqlite3Get4byte(i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  store i8* %61, i8** %66, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = call i8* @sqlite3Get4byte(i32* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  store i8* %69, i8** %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %130, %53
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @SQLITE_OK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp sle i32 %85, %86
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ false, %80 ], [ %87, %84 ]
  br i1 %89, label %90, label %133

90:                                               ; preds = %88
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @walFrameOffset(i32 %91, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @sqlite3OsRead(i32 %96, i32* %97, i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @SQLITE_OK, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %90
  %107 = load i32*, i32** %8, align 8
  %108 = call i8* @sqlite3Get4byte(i32* %107)
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %15, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = call i8* @sqlite3Get4byte(i32* %111)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %16, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = call i32 @walEncodeFrame(%struct.TYPE_6__* %114, i32 %115, i32 %116, i32* %120, i32* %24)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = mul nuw i64 4, %22
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @sqlite3OsWrite(i32 %124, i32* %24, i32 %126, i32 %127)
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %106, %90
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %80

133:                                              ; preds = %88
  %134 = load i32*, i32** %8, align 8
  %135 = call i32 @sqlite3_free(i32* %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %137

137:                                              ; preds = %133, %31
  %138 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @sqlite3_malloc(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @walFrameOffset(i32, i32) #2

declare dso_local i32 @sqlite3OsRead(i32, i32*, i32, i32) #2

declare dso_local i8* @sqlite3Get4byte(i32*) #2

declare dso_local i32 @walEncodeFrame(%struct.TYPE_6__*, i32, i32, i32*, i32*) #2

declare dso_local i32 @sqlite3OsWrite(i32, i32*, i32, i32) #2

declare dso_local i32 @sqlite3_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
