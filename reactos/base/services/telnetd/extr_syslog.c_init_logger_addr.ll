; ModuleID = '/home/carl/AnghaBench/reactos/base/services/telnetd/extr_syslog.c_init_logger_addr.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/telnetd/extr_syslog.c_init_logger_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.hostent = type { i32, i32 }

@FILENAME_MAX = common dso_local global i32 0, align 4
@sa_logger = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AF_INET = common dso_local global i32 0, align 4
@syslog_conf_dir = common dso_local global i8* null, align 8
@__argv = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [12 x i8] c"syslog.host\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SYSLOG_PORT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_logger_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_logger_addr() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @FILENAME_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = call i32 @memset(%struct.TYPE_7__* @sa_logger, i32 0, i32 4)
  %14 = load i32, i32* @AF_INET, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sa_logger, i32 0, i32 2), align 8
  %15 = load i8*, i8** @syslog_conf_dir, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 92, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %0
  %21 = load i8*, i8** @syslog_conf_dir, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 47, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8*, i8** @syslog_conf_dir, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 58, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20, %0
  %33 = load i8*, i8** @syslog_conf_dir, align 8
  %34 = call i32 @strcpy(i8* %12, i8* %33)
  br label %61

35:                                               ; preds = %26
  %36 = load i8**, i8*** @__argv, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcpy(i8* %12, i8* %38)
  %40 = call i8* @strrchr(i8* %12, i8 signext 92)
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %3, align 8
  %42 = call i8* @strrchr(i8* %12, i8 signext 47)
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i8*, i8** %7, align 8
  store i8 0, i8* %48, align 1
  br label %58

49:                                               ; preds = %35
  %50 = load i8*, i8** %3, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ugt i8* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  store i8 0, i8* %54, align 1
  br label %57

55:                                               ; preds = %49
  %56 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %56, align 16
  br label %57

57:                                               ; preds = %55, %53
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i8*, i8** @syslog_conf_dir, align 8
  %60 = call i32 @strcat(i8* %12, i8* %59)
  br label %61

61:                                               ; preds = %58, %32
  %62 = call i32 @strlen(i8* %12)
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %12, i64 %64
  store i8* %65, i8** %3, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 92, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load i8*, i8** %3, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 47, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %3, align 8
  %78 = load i8*, i8** %3, align 8
  store i8 47, i8* %78, align 1
  br label %79

79:                                               ; preds = %75, %70, %61
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %3, align 8
  %82 = call i32 @strcpy(i8* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %83 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %83, i32** %4, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %144

87:                                               ; preds = %79
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %89 = load i32*, i32** %4, align 8
  %90 = call i32* @fgets(i8* %88, i32 256, i32* %89)
  %91 = icmp eq i32* null, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %93, align 16
  br label %109

94:                                               ; preds = %87
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %96 = call i8* @strchr(i8* %95, i8 signext 10)
  store i8* %96, i8** %3, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i8*, i8** %3, align 8
  store i8 0, i8* %100, align 1
  br label %101

101:                                              ; preds = %99, %94
  %102 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %103 = call i8* @strchr(i8* %102, i8 signext 13)
  store i8* %103, i8** %3, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i8*, i8** %3, align 8
  store i8 0, i8* %107, align 1
  br label %108

108:                                              ; preds = %106, %101
  br label %109

109:                                              ; preds = %108, %92
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @fclose(i32* %110)
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %113 = call i8* @strchr(i8* %112, i8 signext 58)
  store i8* %113, i8** %3, align 8
  %114 = load i8*, i8** %3, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i8*, i8** %3, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %3, align 8
  store i8 0, i8* %117, align 1
  br label %119

119:                                              ; preds = %116, %109
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %121 = call %struct.hostent* @gethostbyname(i8* %120)
  store %struct.hostent* %121, %struct.hostent** %6, align 8
  %122 = load %struct.hostent*, %struct.hostent** %6, align 8
  %123 = icmp ne %struct.hostent* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  br label %144

125:                                              ; preds = %119
  %126 = load %struct.hostent*, %struct.hostent** %6, align 8
  %127 = getelementptr inbounds %struct.hostent, %struct.hostent* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.hostent*, %struct.hostent** %6, align 8
  %130 = getelementptr inbounds %struct.hostent, %struct.hostent* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sa_logger, i32 0, i32 1, i32 1), i32 %128, i32 %131)
  %133 = load i8*, i8** %3, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = load i8*, i8** %3, align 8
  %137 = call i64 @strtoul(i8* %136, i32* null, i32 0)
  %138 = trunc i64 %137 to i16
  %139 = call i8* @htons(i16 zeroext %138)
  store i8* %139, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sa_logger, i32 0, i32 0), align 8
  br label %143

140:                                              ; preds = %125
  %141 = load i16, i16* @SYSLOG_PORT, align 2
  %142 = call i8* @htons(i16 zeroext %141)
  store i8* %142, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sa_logger, i32 0, i32 0), align 8
  br label %143

143:                                              ; preds = %140, %135
  store i32 1, i32* %8, align 4
  br label %148

144:                                              ; preds = %124, %86
  %145 = call i32 @htonl(i32 2130706433)
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sa_logger, i32 0, i32 1, i32 0, i32 0), align 8
  %146 = load i16, i16* @SYSLOG_PORT, align 2
  %147 = call i8* @htons(i16 zeroext %146)
  store i8* %147, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sa_logger, i32 0, i32 0), align 8
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %144, %143
  %149 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %8, align 4
  switch i32 %150, label %152 [
    i32 0, label %151
    i32 1, label %151
  ]

151:                                              ; preds = %148, %148
  ret void

152:                                              ; preds = %148
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local %struct.hostent* @gethostbyname(i8*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i8* @htons(i16 zeroext) #2

declare dso_local i64 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @htonl(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
