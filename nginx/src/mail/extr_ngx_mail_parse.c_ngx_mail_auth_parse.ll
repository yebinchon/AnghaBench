; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_parse.c_ngx_mail_auth_parse.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_parse.c_ngx_mail_auth_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@NGX_MAIL_PARSE_INVALID_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"LOGIN\00", align 1
@NGX_MAIL_AUTH_LOGIN = common dso_local global i32 0, align 4
@NGX_MAIL_AUTH_LOGIN_USERNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"PLAIN\00", align 1
@NGX_MAIL_AUTH_PLAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"CRAM-MD5\00", align 1
@NGX_MAIL_AUTH_CRAM_MD5 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@NGX_MAIL_AUTH_EXTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_mail_auth_parse(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %13, i32* %3, align 4
  br label %130

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %24, label %77

24:                                               ; preds = %14
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ngx_strncasecmp(i32 %28, i32* bitcast ([6 x i8]* @.str to i32*), i32 5)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @NGX_MAIL_AUTH_LOGIN, align 4
  store i32 %38, i32* %3, align 4
  br label %130

39:                                               ; preds = %31
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @NGX_MAIL_AUTH_LOGIN_USERNAME, align 4
  store i32 %46, i32* %3, align 4
  br label %130

47:                                               ; preds = %39
  %48 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %48, i32* %3, align 4
  br label %130

49:                                               ; preds = %24
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ngx_strncasecmp(i32 %53, i32* bitcast ([6 x i8]* @.str.1 to i32*), i32 5)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %49
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @NGX_MAIL_AUTH_PLAIN, align 4
  store i32 %63, i32* %3, align 4
  br label %130

64:                                               ; preds = %56
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @ngx_mail_auth_plain(%struct.TYPE_10__* %71, i32* %72, i32 1)
  store i32 %73, i32* %3, align 4
  br label %130

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %76, i32* %3, align 4
  br label %130

77:                                               ; preds = %14
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %128

83:                                               ; preds = %77
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ngx_strncasecmp(i32 %87, i32* bitcast ([9 x i8]* @.str.2 to i32*), i32 8)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %97, i32* %3, align 4
  br label %130

98:                                               ; preds = %90
  %99 = load i32, i32* @NGX_MAIL_AUTH_CRAM_MD5, align 4
  store i32 %99, i32* %3, align 4
  br label %130

100:                                              ; preds = %83
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ngx_strncasecmp(i32 %104, i32* bitcast ([9 x i8]* @.str.3 to i32*), i32 8)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %100
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @NGX_MAIL_AUTH_EXTERNAL, align 4
  store i32 %114, i32* %3, align 4
  br label %130

115:                                              ; preds = %107
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @ngx_mail_auth_external(%struct.TYPE_10__* %122, i32* %123, i32 1)
  store i32 %124, i32* %3, align 4
  br label %130

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %100
  %127 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %127, i32* %3, align 4
  br label %130

128:                                              ; preds = %77
  %129 = load i32, i32* @NGX_MAIL_PARSE_INVALID_COMMAND, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %126, %121, %113, %98, %96, %75, %70, %62, %47, %45, %37, %12
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local i32 @ngx_mail_auth_plain(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @ngx_mail_auth_external(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
