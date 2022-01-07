; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_syslogger.c_logfile_rotate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_syslogger.c_logfile_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rotation_requested = common dso_local global i32 0, align 4
@next_rotation_time = common dso_local global i32 0, align 4
@Log_destination = common dso_local global i32 0, align 4
@LOG_DESTINATION_CSVLOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".csv\00", align 1
@LOG_DESTINATION_STDERR = common dso_local global i32 0, align 4
@Log_truncate_on_rotation = common dso_local global i64 0, align 8
@last_file_name = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@errno = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"disabling automatic rotation (use SIGHUP to re-enable)\00", align 1
@rotation_disabled = common dso_local global i32 0, align 4
@syslogFile = common dso_local global i32* null, align 8
@csvlogFile = common dso_local global i32* null, align 8
@last_csv_file_name = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @logfile_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logfile_rotate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %6, align 8
  store i32 0, i32* @rotation_requested, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @next_rotation_time, align 4
  store i32 %12, i32* %7, align 4
  br label %15

13:                                               ; preds = %2
  %14 = call i32 @time(i32* null)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @logfile_getname(i32 %16, i8* null)
  store i8* %17, i8** %5, align 8
  %18 = load i32, i32* @Log_destination, align 4
  %19 = load i32, i32* @LOG_DESTINATION_CSVLOG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @logfile_getname(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @LOG_DESTINATION_STDERR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %92

33:                                               ; preds = %28, %25
  %34 = load i64, i64* @Log_truncate_on_rotation, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i8*, i8** @last_file_name, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** @last_file_name, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = call i32* @logfile_open(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32* %49, i32** %8, align 8
  br label %53

50:                                               ; preds = %42, %39, %36, %33
  %51 = load i8*, i8** %5, align 8
  %52 = call i32* @logfile_open(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32* %52, i32** %8, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %81, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @ENFILE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EMFILE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @LOG, align 4
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %67 = call i32 @ereport(i32 %65, i32 %66)
  store i32 1, i32* @rotation_disabled, align 4
  br label %68

68:                                               ; preds = %64, %60, %56
  %69 = load i8*, i8** %5, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @pfree(i8* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i8*, i8** %6, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @pfree(i8* %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %204

81:                                               ; preds = %53
  %82 = load i32*, i32** @syslogFile, align 8
  %83 = call i32 @fclose(i32* %82)
  %84 = load i32*, i32** %8, align 8
  store i32* %84, i32** @syslogFile, align 8
  %85 = load i8*, i8** @last_file_name, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i8*, i8** @last_file_name, align 8
  %89 = call i32 @pfree(i8* %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i8*, i8** %5, align 8
  store i8* %91, i8** @last_file_name, align 8
  store i8* null, i8** %5, align 8
  br label %92

92:                                               ; preds = %90, %28
  %93 = load i32, i32* @Log_destination, align 4
  %94 = load i32, i32* @LOG_DESTINATION_CSVLOG, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %171

97:                                               ; preds = %92
  %98 = load i32*, i32** @csvlogFile, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @LOG_DESTINATION_CSVLOG, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %171

108:                                              ; preds = %103, %100, %97
  %109 = load i64, i64* @Log_truncate_on_rotation, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load i8*, i8** @last_csv_file_name, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i8*, i8** %6, align 8
  %119 = load i8*, i8** @last_csv_file_name, align 8
  %120 = call i64 @strcmp(i8* %118, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %6, align 8
  %124 = call i32* @logfile_open(i8* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32* %124, i32** %8, align 8
  br label %128

125:                                              ; preds = %117, %114, %111, %108
  %126 = load i8*, i8** %6, align 8
  %127 = call i32* @logfile_open(i8* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32* %127, i32** %8, align 8
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32*, i32** %8, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %156, label %131

131:                                              ; preds = %128
  %132 = load i64, i64* @errno, align 8
  %133 = load i64, i64* @ENFILE, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load i64, i64* @errno, align 8
  %137 = load i64, i64* @EMFILE, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32, i32* @LOG, align 4
  %141 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %142 = call i32 @ereport(i32 %140, i32 %141)
  store i32 1, i32* @rotation_disabled, align 4
  br label %143

143:                                              ; preds = %139, %135, %131
  %144 = load i8*, i8** %5, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @pfree(i8* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i8*, i8** %6, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @pfree(i8* %153)
  br label %155

155:                                              ; preds = %152, %149
  br label %204

156:                                              ; preds = %128
  %157 = load i32*, i32** @csvlogFile, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32*, i32** @csvlogFile, align 8
  %161 = call i32 @fclose(i32* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32*, i32** %8, align 8
  store i32* %163, i32** @csvlogFile, align 8
  %164 = load i8*, i8** @last_csv_file_name, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i8*, i8** @last_csv_file_name, align 8
  %168 = call i32 @pfree(i8* %167)
  br label %169

169:                                              ; preds = %166, %162
  %170 = load i8*, i8** %6, align 8
  store i8* %170, i8** @last_csv_file_name, align 8
  store i8* null, i8** %6, align 8
  br label %189

171:                                              ; preds = %103, %92
  %172 = load i32, i32* @Log_destination, align 4
  %173 = load i32, i32* @LOG_DESTINATION_CSVLOG, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %188, label %176

176:                                              ; preds = %171
  %177 = load i32*, i32** @csvlogFile, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load i32*, i32** @csvlogFile, align 8
  %181 = call i32 @fclose(i32* %180)
  store i32* null, i32** @csvlogFile, align 8
  %182 = load i8*, i8** @last_csv_file_name, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i8*, i8** @last_csv_file_name, align 8
  %186 = call i32 @pfree(i8* %185)
  br label %187

187:                                              ; preds = %184, %179
  store i8* null, i8** @last_csv_file_name, align 8
  br label %188

188:                                              ; preds = %187, %176, %171
  br label %189

189:                                              ; preds = %188, %169
  %190 = load i8*, i8** %5, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i8*, i8** %5, align 8
  %194 = call i32 @pfree(i8* %193)
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i8*, i8** %6, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i8*, i8** %6, align 8
  %200 = call i32 @pfree(i8* %199)
  br label %201

201:                                              ; preds = %198, %195
  %202 = call i32 (...) @update_metainfo_datafile()
  %203 = call i32 (...) @set_next_rotation_time()
  br label %204

204:                                              ; preds = %201, %155, %80
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @logfile_getname(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @logfile_open(i8*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @update_metainfo_datafile(...) #1

declare dso_local i32 @set_next_rotation_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
