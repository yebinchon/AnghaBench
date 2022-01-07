; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_createCollation.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_createCollation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32 (i8*, i32, i8*, i32, i8*)*, i32, void (i8*)*, i8* }

@SQLITE_UTF16 = common dso_local global i32 0, align 4
@SQLITE_UTF16_ALIGNED = common dso_local global i32 0, align 4
@SQLITE_UTF16NATIVE = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_UTF16BE = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@SQLITE_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"unable to delete/modify collation sequence due to active statements\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i8*, i32 (i8*, i32, i8*, i32, i8*)*, void (i8*)*)* @createCollation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createCollation(%struct.TYPE_9__* %0, i8* %1, i32 %2, i8* %3, i32 (i8*, i32, i8*, i32, i8*)* %4, void (i8*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i32, i8*, i32, i8*)*, align 8
  %13 = alloca void (i8*)*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 (i8*, i32, i8*, i32, i8*)* %4, i32 (i8*, i32, i8*, i32, i8*)** %12, align 8
  store void (i8*)* %5, void (i8*)** %13, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @sqlite3Strlen30(i8* %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sqlite3_mutex_held(i32 %24)
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @SQLITE_UTF16, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @testcase(i32 %31)
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @SQLITE_UTF16_ALIGNED, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @testcase(i32 %36)
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @SQLITE_UTF16, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %6
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @SQLITE_UTF16_ALIGNED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %6
  %46 = load i32, i32* @SQLITE_UTF16NATIVE, align 4
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @SQLITE_UTF8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @SQLITE_UTF16BE, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %47
  %56 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %56, i32* %7, align 4
  br label %162

57:                                               ; preds = %51
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = call %struct.TYPE_10__* @sqlite3FindCollSeq(%struct.TYPE_9__* %58, i32 %59, i8* %60, i32 0)
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %14, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %63 = icmp ne %struct.TYPE_10__* %62, null
  br i1 %63, label %64, label %132

64:                                               ; preds = %57
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %66, align 8
  %68 = icmp ne i32 (i8*, i32, i8*, i32, i8*)* %67, null
  br i1 %68, label %69, label %132

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = load i32, i32* @SQLITE_BUSY, align 4
  %77 = call i32 @sqlite3Error(%struct.TYPE_9__* %75, i32 %76, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %78, i32* %7, align 4
  br label %162

79:                                               ; preds = %69
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = call i32 @sqlite3ExpirePreparedStatements(%struct.TYPE_9__* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SQLITE_UTF16_ALIGNED, align 4
  %86 = xor i32 %85, -1
  %87 = and i32 %84, %86
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %79
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call %struct.TYPE_10__* @sqlite3HashFind(i32* %92, i8* %93, i32 %94)
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %17, align 8
  store i32 0, i32* %18, align 4
  br label %96

96:                                               ; preds = %127, %90
  %97 = load i32, i32* %18, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %130

99:                                               ; preds = %96
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %102
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %19, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %99
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load void (i8*)*, void (i8*)** %113, align 8
  %115 = icmp ne void (i8*)* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load void (i8*)*, void (i8*)** %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  call void %119(i8* %122)
  br label %123

123:                                              ; preds = %116, %111
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i32 (i8*, i32, i8*, i32, i8*)* null, i32 (i8*, i32, i8*, i32, i8*)** %125, align 8
  br label %126

126:                                              ; preds = %123, %99
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  br label %96

130:                                              ; preds = %96
  br label %131

131:                                              ; preds = %130, %79
  br label %132

132:                                              ; preds = %131, %64, %57
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %134 = load i32, i32* %15, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = call %struct.TYPE_10__* @sqlite3FindCollSeq(%struct.TYPE_9__* %133, i32 %134, i8* %135, i32 1)
  store %struct.TYPE_10__* %136, %struct.TYPE_10__** %14, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %138 = icmp eq %struct.TYPE_10__* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %140, i32* %7, align 4
  br label %162

141:                                              ; preds = %132
  %142 = load i32 (i8*, i32, i8*, i32, i8*)*, i32 (i8*, i32, i8*, i32, i8*)** %12, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  store i32 (i8*, i32, i8*, i32, i8*)* %142, i32 (i8*, i32, i8*, i32, i8*)** %144, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  %148 = load void (i8*)*, void (i8*)** %13, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  store void (i8*)* %148, void (i8*)** %150, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @SQLITE_UTF16_ALIGNED, align 4
  %154 = and i32 %152, %153
  %155 = or i32 %151, %154
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %159 = load i32, i32* @SQLITE_OK, align 4
  %160 = call i32 @sqlite3Error(%struct.TYPE_9__* %158, i32 %159, i8* null)
  %161 = load i32, i32* @SQLITE_OK, align 4
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %141, %139, %74, %55
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_10__* @sqlite3FindCollSeq(%struct.TYPE_9__*, i32, i8*, i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @sqlite3ExpirePreparedStatements(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @sqlite3HashFind(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
