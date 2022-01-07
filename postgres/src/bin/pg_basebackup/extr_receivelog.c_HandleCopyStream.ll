; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_HandleCopyStream.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_receivelog.c_HandleCopyStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { i64 (i32*)*, i32 (...)* }

@still_sending = common dso_local global i32 0, align 4
@lastFlushPosition = common dso_local global i32 0, align 4
@walfile = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %s\00", align 1
@current_walfile_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unrecognized streaming header: \22%c\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_9__*, i32*)* @HandleCopyStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @HandleCopyStream(i32* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %9, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  store i32 1, i32* @still_sending, align 4
  br label %18

18:                                               ; preds = %3, %179
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @CheckCopyStreamStop(i32* %19, %struct.TYPE_9__* %20, i32 %21, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %180

26:                                               ; preds = %18
  %27 = call i32 (...) @feGetCurrentTimestamp()
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %26
  %33 = load i32, i32* @lastFlushPosition, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load i32*, i32** @walfile, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64 (i32*)*, i64 (i32*)** %43, align 8
  %45 = load i32*, i32** @walfile, align 8
  %46 = call i64 %44(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load i32, i32* @current_walfile_name, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32 (...)*, i32 (...)** %53, align 8
  %55 = call i32 (...) %54()
  %56 = call i32 @pg_log_fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %55)
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %39
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* @lastFlushPosition, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @sendFeedback(i32* %60, i32 %61, i32 %62, i32 0)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %180

66:                                               ; preds = %58
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %36, %32, %26
  %69 = load i32, i32* @still_sending, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @feTimestampDifferenceExceeds(i32 %77, i32 %78, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @sendFeedback(i32* %85, i32 %86, i32 %87, i32 0)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %180

91:                                               ; preds = %84
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %91, %76, %71, %68
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @CalculateCopyStreamSleeptime(i32 %94, i32 %97, i32 %98)
  store i64 %99, i64* %13, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @CopyStreamReceive(i32* %100, i64 %101, i32 %104, i8** %8)
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %173, %93
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %179

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %180

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = icmp eq i32 %114, -2
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = load i32*, i32** %5, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = call i32* @HandleEndOfCopyStream(i32* %117, %struct.TYPE_9__* %118, i8* %119, i32 %120, i32* %121)
  store i32* %122, i32** %14, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %180

126:                                              ; preds = %116
  %127 = load i32*, i32** %14, align 8
  store i32* %127, i32** %4, align 8
  br label %187

128:                                              ; preds = %113
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 107
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @ProcessKeepaliveMsg(i32* %135, %struct.TYPE_9__* %136, i8* %137, i32 %138, i32 %139, i32* %9)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %134
  br label %180

143:                                              ; preds = %134
  br label %173

144:                                              ; preds = %128
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 119
  br i1 %149, label %150, label %167

150:                                              ; preds = %144
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @ProcessXLogDataMsg(i32* %151, %struct.TYPE_9__* %152, i8* %153, i32 %154, i32* %10)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %150
  br label %180

158:                                              ; preds = %150
  %159 = load i32*, i32** %5, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = call i32 @CheckCopyStreamStop(i32* %159, %struct.TYPE_9__* %160, i32 %161, i32* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %158
  br label %180

166:                                              ; preds = %158
  br label %172

167:                                              ; preds = %144
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = call i32 @pg_log_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8 signext %170)
  br label %180

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172, %143
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @CopyStreamReceive(i32* %174, i64 0, i32 %177, i8** %8)
  store i32 %178, i32* %11, align 4
  br label %106

179:                                              ; preds = %106
  br label %18

180:                                              ; preds = %167, %165, %157, %142, %125, %112, %90, %65, %25
  %181 = load i8*, i8** %8, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @PQfreemem(i8* %184)
  br label %186

186:                                              ; preds = %183, %180
  store i32* null, i32** %4, align 8
  br label %187

187:                                              ; preds = %186, %126
  %188 = load i32*, i32** %4, align 8
  ret i32* %188
}

declare dso_local i32 @CheckCopyStreamStop(i32*, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @feGetCurrentTimestamp(...) #1

declare dso_local i32 @pg_log_fatal(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sendFeedback(i32*, i32, i32, i32) #1

declare dso_local i64 @feTimestampDifferenceExceeds(i32, i32, i32) #1

declare dso_local i64 @CalculateCopyStreamSleeptime(i32, i32, i32) #1

declare dso_local i32 @CopyStreamReceive(i32*, i64, i32, i8**) #1

declare dso_local i32* @HandleEndOfCopyStream(i32*, %struct.TYPE_9__*, i8*, i32, i32*) #1

declare dso_local i32 @ProcessKeepaliveMsg(i32*, %struct.TYPE_9__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @ProcessXLogDataMsg(i32*, %struct.TYPE_9__*, i8*, i32, i32*) #1

declare dso_local i32 @pg_log_error(i8*, i8 signext) #1

declare dso_local i32 @PQfreemem(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
