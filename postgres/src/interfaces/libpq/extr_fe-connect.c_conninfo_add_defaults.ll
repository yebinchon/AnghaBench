; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_add_defaults.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_conninfo_add_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32*, i32* }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sslmode\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"PGREQUIRESSL\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @conninfo_add_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conninfo_add_defaults(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @parseServiceInfo(%struct.TYPE_4__* %9, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %137

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %6, align 8
  br label %19

19:                                               ; preds = %133, %17
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %136

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %133

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @getenv(i8* %38)
  store i8* %39, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @strdup(i8* %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %41
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @printfPQExpBuffer(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  store i32 0, i32* %3, align 4
  br label %137

59:                                               ; preds = %41
  br label %133

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60, %30
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @strcmp(i32* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %61
  %68 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 49
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %77
  %87 = load i64, i64* %5, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %92 = call i32 @printfPQExpBuffer(i64 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  store i32 0, i32* %3, align 4
  br label %137

94:                                               ; preds = %77
  br label %133

95:                                               ; preds = %71, %67
  br label %96

96:                                               ; preds = %95, %61
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %122

101:                                              ; preds = %96
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @strdup(i8* %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %101
  %114 = load i64, i64* %5, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %119 = call i32 @printfPQExpBuffer(i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %113
  store i32 0, i32* %3, align 4
  br label %137

121:                                              ; preds = %101
  br label %133

122:                                              ; preds = %96
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = call i64 @strcmp(i32* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = call i32* @pg_fe_getauthname(i32* null)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  store i32* %129, i32** %131, align 8
  br label %133

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %128, %121, %94, %59, %29
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 1
  store %struct.TYPE_4__* %135, %struct.TYPE_4__** %6, align 8
  br label %19

136:                                              ; preds = %19
  store i32 1, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %120, %93, %58, %16
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i64 @parseServiceInfo(%struct.TYPE_4__*, i64) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @printfPQExpBuffer(i64, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32* @pg_fe_getauthname(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
