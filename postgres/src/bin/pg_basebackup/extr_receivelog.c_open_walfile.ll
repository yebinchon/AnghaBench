; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_open_walfile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_open_walfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 (i8*)*, i64 (i32*)*, i32 (...)*, i32* (i8*, i8*, i64)*, i32 (i32*, i32)*, i64 (i8*)* }

@MAXPGPATH = common dso_local global i32 0, align 4
@WalSegSz = common dso_local global i64 0, align 8
@current_walfile_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"could not get size of write-ahead log file \22%s\22: %s\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"could not open existing write-ahead log file \22%s\22: %s\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"could not fsync existing write-ahead log file \22%s\22: %s\00", align 1
@CLOSE_UNLINK = common dso_local global i32 0, align 4
@walfile = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"write-ahead log file \22%s\22 has %d byte, should be 0 or %d\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"write-ahead log file \22%s\22 has %d bytes, should be 0 or %d\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"could not open write-ahead log file \22%s\22: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @open_walfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_walfile(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @MAXPGPATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i64, i64* @WalSegSz, align 8
  %19 = call i32 @XLByteToSeg(i32 %16, i32 %17, i64 %18)
  %20 = load i8*, i8** @current_walfile_name, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i64, i64* @WalSegSz, align 8
  %26 = call i32 @XLogFileName(i8* %20, i32 %23, i32 %24, i64 %25)
  %27 = trunc i64 %13 to i32
  %28 = load i8*, i8** @current_walfile_name, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %37 ]
  %40 = call i32 @snprintf(i8* %15, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  %45 = load i64 (i8*)*, i64 (i8*)** %44, align 8
  %46 = call i64 %45(i8* %15)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %136

48:                                               ; preds = %38
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64 (i8*)*, i64 (i8*)** %52, align 8
  %54 = call i64 %53(i8* %15)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %48
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32 (...)*, i32 (...)** %61, align 8
  %63 = call i32 (...) %62()
  %64 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %15, i32 %63)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

65:                                               ; preds = %48
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @WalSegSz, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32* (i8*, i8*, i64)*, i32* (i8*, i8*, i64)** %73, align 8
  %75 = load i8*, i8** @current_walfile_name, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32* %74(i8* %75, i8* %78, i64 0)
  store i32* %79, i32** %6, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %69
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32 (...)*, i32 (...)** %86, align 8
  %88 = call i32 (...) %87()
  %89 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %15, i32 %88)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

90:                                               ; preds = %69
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64 (i32*)*, i64 (i32*)** %94, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i64 %95(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %90
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32 (...)*, i32 (...)** %103, align 8
  %105 = call i32 (...) %104()
  %106 = call i32 @pg_log_fatal(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %15, i32 %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i32 (i32*, i32)*, i32 (i32*, i32)** %110, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* @CLOSE_UNLINK, align 4
  %114 = call i32 %111(i32* %112, i32 %113)
  %115 = call i32 @exit(i32 1) #4
  unreachable

116:                                              ; preds = %90
  %117 = load i32*, i32** %6, align 8
  store i32* %117, i32** @walfile, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

118:                                              ; preds = %65
  %119 = load i64, i64* %9, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load i64, i64* @errno, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i64, i64* @ENOSPC, align 8
  store i64 %125, i64* @errno, align 8
  br label %126

126:                                              ; preds = %124, %121
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @ngettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i64 %127)
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = load i64, i64* %9, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i64, i64* @WalSegSz, align 8
  %134 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* %130, i8* %15, i32 %132, i64 %133)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

135:                                              ; preds = %118
  br label %136

136:                                              ; preds = %135, %38
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load i32* (i8*, i8*, i64)*, i32* (i8*, i8*, i64)** %140, align 8
  %142 = load i8*, i8** @current_walfile_name, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i64, i64* @WalSegSz, align 8
  %147 = call i32* %141(i8* %142, i8* %145, i64 %146)
  store i32* %147, i32** %6, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %136
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32 (...)*, i32 (...)** %154, align 8
  %156 = call i32 (...) %155()
  %157 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %15, i32 %156)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

158:                                              ; preds = %136
  %159 = load i32*, i32** %6, align 8
  store i32* %159, i32** @walfile, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %160

160:                                              ; preds = %158, %150, %126, %116, %82, %57
  %161 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @XLByteToSeg(i32, i32, i64) #2

declare dso_local i32 @XLogFileName(i8*, i32, i32, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @pg_log_error(i8*, i8*, i32, ...) #2

declare dso_local i32 @pg_log_fatal(i8*, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @ngettext(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
