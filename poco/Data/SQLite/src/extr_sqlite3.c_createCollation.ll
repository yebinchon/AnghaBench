; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_createCollation.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_createCollation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.TYPE_11__ = type { i32 (i8*, i32, i8*, i32, i8*)*, i32, void (i8*)*, i8* }

@SQLITE_UTF16 = common dso_local global i32 0, align 4
@SQLITE_UTF16_ALIGNED = common dso_local global i32 0, align 4
@SQLITE_UTF16NATIVE = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_UTF16BE = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"unable to delete/modify collation sequence due to active statements\00", align 1
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32, i8*, i32 (i8*, i32, i8*, i32, i8*)*, void (i8*)*)* @createCollation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createCollation(%struct.TYPE_10__* %0, i8* %1, i32 %2, i8* %3, i32 (i8*, i32, i8*, i32, i8*)* %4, void (i8*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i32, i8*, i32, i8*)*, align 8
  %13 = alloca void (i8*)*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 (i8*, i32, i8*, i32, i8*)* %4, i32 (i8*, i32, i8*, i32, i8*)** %12, align 8
  store void (i8*)* %5, void (i8*)** %13, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sqlite3_mutex_held(i32 %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @SQLITE_UTF16, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @testcase(i32 %28)
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @SQLITE_UTF16_ALIGNED, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @testcase(i32 %33)
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @SQLITE_UTF16, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %6
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @SQLITE_UTF16_ALIGNED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %6
  %43 = load i32, i32* @SQLITE_UTF16NATIVE, align 4
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @SQLITE_UTF8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @SQLITE_UTF16BE, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %53, i32* %7, align 4
  br label %158

54:                                               ; preds = %48
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call %struct.TYPE_11__* @sqlite3FindCollSeq(%struct.TYPE_10__* %55, i32 %56, i8* %57, i32 0)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %14, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %128

61:                                               ; preds = %54
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %63, align 8
  %65 = icmp ne i32 (i8*, i32, i8*, i32, i8*)* %64, null
  br i1 %65, label %66, label %128

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = load i32, i32* @SQLITE_BUSY, align 4
  %74 = call i32 @sqlite3ErrorWithMsg(%struct.TYPE_10__* %72, i32 %73, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %75, i32* %7, align 4
  br label %158

76:                                               ; preds = %66
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = call i32 @sqlite3ExpirePreparedStatements(%struct.TYPE_10__* %77, i32 0)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SQLITE_UTF16_ALIGNED, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %76
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i8*, i8** %9, align 8
  %91 = call %struct.TYPE_11__* @sqlite3HashFind(i32* %89, i8* %90)
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %16, align 8
  store i32 0, i32* %17, align 4
  br label %92

92:                                               ; preds = %123, %87
  %93 = load i32, i32* %17, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %126

95:                                               ; preds = %92
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %98
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %18, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %95
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load void (i8*)*, void (i8*)** %109, align 8
  %111 = icmp ne void (i8*)* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load void (i8*)*, void (i8*)** %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  call void %115(i8* %118)
  br label %119

119:                                              ; preds = %112, %107
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i32 (i8*, i32, i8*, i32, i8*)* null, i32 (i8*, i32, i8*, i32, i8*)** %121, align 8
  br label %122

122:                                              ; preds = %119, %95
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %92

126:                                              ; preds = %92
  br label %127

127:                                              ; preds = %126, %76
  br label %128

128:                                              ; preds = %127, %61, %54
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i8*, i8** %9, align 8
  %132 = call %struct.TYPE_11__* @sqlite3FindCollSeq(%struct.TYPE_10__* %129, i32 %130, i8* %131, i32 1)
  store %struct.TYPE_11__* %132, %struct.TYPE_11__** %14, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %134 = icmp eq %struct.TYPE_11__* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %136, i32* %7, align 4
  br label %158

137:                                              ; preds = %128
  %138 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %12, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  store i32 (i8*, i32, i8*, i32, i8*)* %138, i32 (i8*, i32, i8*, i32, i8*)** %140, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  %144 = load void (i8*)*, void (i8*)** %13, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  store void (i8*)* %144, void (i8*)** %146, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @SQLITE_UTF16_ALIGNED, align 4
  %150 = and i32 %148, %149
  %151 = or i32 %147, %150
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = load i32, i32* @SQLITE_OK, align 4
  %156 = call i32 @sqlite3Error(%struct.TYPE_10__* %154, i32 %155)
  %157 = load i32, i32* @SQLITE_OK, align 4
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %137, %135, %71, %52
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_11__* @sqlite3FindCollSeq(%struct.TYPE_10__*, i32, i8*, i32) #1

declare dso_local i32 @sqlite3ErrorWithMsg(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @sqlite3ExpirePreparedStatements(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_11__* @sqlite3HashFind(i32*, i8*) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
