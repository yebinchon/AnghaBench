; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth-scram.c_pg_fe_scram_exchange.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth-scram.c_pg_fe_scram_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"malformed SCRAM message (empty message)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"malformed SCRAM message (length mismatch)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"incorrect server signature\0A\00", align 1
@FE_SCRAM_FINISHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid SCRAM exchange state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_fe_scram_exchange(i8* %0, i8* %1, i32 %2, i8** %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %15, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %16, align 8
  %22 = load i32*, i32** %13, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %14, align 8
  store i32 0, i32* %23, align 4
  %24 = load i8**, i8*** %11, align 8
  store i8* null, i8** %24, align 8
  %25 = load i32*, i32** %12, align 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 130
  br i1 %29, label %30, label %49

30:                                               ; preds = %7
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = call i32 @libpq_gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @printfPQExpBuffer(i32* %35, i32 %36)
  br label %120

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = call i32 @libpq_gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @printfPQExpBuffer(i32* %45, i32 %46)
  br label %120

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %7
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %114 [
    i32 130, label %53
    i32 129, label %69
    i32 128, label %91
  ]

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %55 = call i8* @build_client_first_message(%struct.TYPE_8__* %54)
  %56 = load i8**, i8*** %11, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i8**, i8*** %11, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %120

61:                                               ; preds = %53
  %62 = load i8**, i8*** %11, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = load i32*, i32** %12, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %13, align 8
  store i32 0, i32* %66, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 129, i32* %68, align 8
  br label %119

69:                                               ; preds = %49
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @read_server_first_message(%struct.TYPE_8__* %70, i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %120

75:                                               ; preds = %69
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %77 = call i8* @build_client_final_message(%struct.TYPE_8__* %76)
  %78 = load i8**, i8*** %11, align 8
  store i8* %77, i8** %78, align 8
  %79 = load i8**, i8*** %11, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %120

83:                                               ; preds = %75
  %84 = load i8**, i8*** %11, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = load i32*, i32** %12, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %13, align 8
  store i32 0, i32* %88, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 128, i32* %90, align 8
  br label %119

91:                                               ; preds = %49
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @read_server_final_message(%struct.TYPE_8__* %92, i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %120

97:                                               ; preds = %91
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %99 = call i32 @verify_server_signature(%struct.TYPE_8__* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32*, i32** %14, align 8
  store i32 1, i32* %102, align 4
  br label %109

103:                                              ; preds = %97
  %104 = load i32*, i32** %14, align 8
  store i32 0, i32* %104, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = call i32 @libpq_gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %108 = call i32 @printfPQExpBuffer(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %101
  %110 = load i32*, i32** %13, align 8
  store i32 1, i32* %110, align 4
  %111 = load i32, i32* @FE_SCRAM_FINISHED, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %119

114:                                              ; preds = %49
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = call i32 @libpq_gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %118 = call i32 @printfPQExpBuffer(i32* %116, i32 %117)
  br label %120

119:                                              ; preds = %109, %83, %61
  br label %123

120:                                              ; preds = %114, %96, %82, %74, %60, %43, %33
  %121 = load i32*, i32** %13, align 8
  store i32 1, i32* %121, align 4
  %122 = load i32*, i32** %14, align 8
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %119
  ret void
}

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @build_client_first_message(%struct.TYPE_8__*) #1

declare dso_local i32 @read_server_first_message(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @build_client_final_message(%struct.TYPE_8__*) #1

declare dso_local i32 @read_server_final_message(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @verify_server_signature(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
