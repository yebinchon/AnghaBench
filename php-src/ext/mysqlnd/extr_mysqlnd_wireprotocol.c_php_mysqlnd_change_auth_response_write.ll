; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_php_mysqlnd_change_auth_response_write.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_wireprotocol.c_php_mysqlnd_change_auth_response_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i32*, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_12__*, i32*, i32*, i32, i32*, i32*)* }
%struct.TYPE_13__ = type { i64, i32 }

@MYSQLND_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"php_mysqlnd_change_auth_response_write\00", align 1
@CONN_QUIT_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i8*)* @php_mysqlnd_change_auth_response_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @php_mysqlnd_change_auth_response_write(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %8, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %10, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32* %30, i32** %11, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  br label %49

44:                                               ; preds = %2
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32* @mnd_emalloc(i64 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i32* [ %43, %39 ], [ %48, %44 ]
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* @MYSQLND_HEADER_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %13, align 8
  %55 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %49
  %61 = load i32*, i32** %13, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @memcpy(i32* %61, i32 %64, i64 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 %71
  store i32* %73, i32** %13, align 8
  br label %74

74:                                               ; preds = %60, %49
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64 (%struct.TYPE_12__*, i32*, i32*, i32, i32*, i32*)*, i64 (%struct.TYPE_12__*, i32*, i32*, i32, i32*, i32*)** %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = ptrtoint i32* %84 to i64
  %87 = ptrtoint i32* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sdiv exact i64 %88, 4
  %90 = load i32, i32* @MYSQLND_HEADER_SIZE, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %89, %91
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %10, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i64 %80(%struct.TYPE_12__* %81, i32* %82, i32* %83, i32 %93, i32* %94, i32* %95)
  store i64 %96, i64* %14, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %97, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %74
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @mnd_efree(i32* %104)
  br label %106

106:                                              ; preds = %103, %74
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* @CONN_QUIT_SENT, align 4
  %112 = call i32 @SET_CONNECTION_STATE(i32* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @DBG_RETURN(i64 %114)
  %116 = load i64, i64* %3, align 8
  ret i64 %116
}

declare dso_local i32* @mnd_emalloc(i64) #1

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @mnd_efree(i32*) #1

declare dso_local i32 @SET_CONNECTION_STATE(i32*, i32) #1

declare dso_local i32 @DBG_RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
