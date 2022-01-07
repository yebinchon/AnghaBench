; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_uri_parse_params.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_uri_parse_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [60 x i8] c"extra key/value separator \22=\22 in URI query parameter: \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"missing key/value separator \22=\22 in URI query parameter: \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sslmode\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"invalid URI query parameter: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_6__*)* @conninfo_uri_parse_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conninfo_uri_parse_params(i8* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  br label %12

12:                                               ; preds = %131, %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %133

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %67, %16
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 61
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = call i32 @libpq_gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @printfPQExpBuffer(%struct.TYPE_6__* %28, i32 %29, i8* %30)
  store i32 0, i32* %4, align 4
  br label %134

32:                                               ; preds = %24
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  store i8 0, i8* %33, align 1
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %9, align 8
  br label %67

36:                                               ; preds = %19
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 38
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %41, %36
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  store i8 0, i8* %52, align 1
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i8*, i8** %9, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = call i32 @libpq_gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @printfPQExpBuffer(%struct.TYPE_6__* %58, i32 %59, i8* %60)
  store i32 0, i32* %4, align 4
  br label %134

62:                                               ; preds = %54
  br label %68

63:                                               ; preds = %41
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %66, %32
  br label %19

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = call i8* @conninfo_uri_decode(i8* %69, %struct.TYPE_6__* %70)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %134

75:                                               ; preds = %68
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = call i8* @conninfo_uri_decode(i8* %76, %struct.TYPE_6__* %77)
  store i8* %78, i8** %9, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @free(i8* %82)
  store i32 0, i32* %4, align 4
  br label %134

84:                                               ; preds = %75
  store i32 1, i32* %11, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i8*, i8** %9, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @free(i8* %95)
  store i32 0, i32* %11, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %97

97:                                               ; preds = %92, %88, %84
  %98 = load i32*, i32** %6, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = call i32 @conninfo_storeval(i32* %98, i8* %99, i8* %100, %struct.TYPE_6__* %101, i32 1, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %97
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = call i32 @libpq_gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @printfPQExpBuffer(%struct.TYPE_6__* %110, i32 %111, i8* %112)
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @free(i8* %120)
  br label %122

122:                                              ; preds = %117, %114
  store i32 0, i32* %4, align 4
  br label %134

123:                                              ; preds = %97
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 @free(i8* %129)
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i8*, i8** %10, align 8
  store i8* %132, i8** %5, align 8
  br label %12

133:                                              ; preds = %12
  store i32 1, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %122, %81, %74, %57, %27
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i8* @conninfo_uri_decode(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @conninfo_storeval(i32*, i8*, i8*, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
