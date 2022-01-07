; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_pop3transport.c_POP3Transport_ParseResponse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inetcomm/extr_pop3transport.c_POP3Transport_ParseResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i64, i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i64, i64 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_17__, i32*, i32, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i8*, i32, i32*, i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"response: %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"state %u\0A\00", align 1
@STATE_DONE = common dso_local global i64 0, align 8
@CMD_RESP = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, %struct.TYPE_21__*)* @POP3Transport_ParseResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @POP3Transport_ParseResponse(%struct.TYPE_20__* %0, i8* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @debugstr_a(i8* %8)
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = call i32 @parse_response(%struct.TYPE_20__* %21)
  store i32 %22, i32* %7, align 4
  %23 = call i64 @SUCCEEDED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %3
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %65 [
    i32 128, label %29
    i32 130, label %35
    i32 132, label %41
    i32 133, label %47
    i32 131, label %53
    i32 129, label %59
  ]

29:                                               ; preds = %25
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 5
  %34 = call i32 @parse_uidl_response(%struct.TYPE_20__* %30, i32* %33)
  store i32 %34, i32* %7, align 4
  br label %69

35:                                               ; preds = %25
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  %40 = call i32 @parse_stat_response(%struct.TYPE_20__* %36, i32* %39)
  store i32 %40, i32* %7, align 4
  br label %69

41:                                               ; preds = %25
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  %46 = call i32 @parse_list_response(%struct.TYPE_20__* %42, i32* %45)
  store i32 %46, i32* %7, align 4
  br label %69

47:                                               ; preds = %25
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = call i32 @parse_dele_response(%struct.TYPE_20__* %48, i32* %51)
  store i32 %52, i32* %7, align 4
  br label %69

53:                                               ; preds = %25
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = call i32 @parse_retr_response(%struct.TYPE_20__* %54, i32* %57)
  store i32 %58, i32* %7, align 4
  br label %69

59:                                               ; preds = %25
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = call i32 @parse_top_response(%struct.TYPE_20__* %60, i32* %63)
  store i32 %64, i32* %7, align 4
  br label %69

65:                                               ; preds = %25
  %66 = load i64, i64* @STATE_DONE, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %59, %53, %47, %41, %35, %29
  br label %70

70:                                               ; preds = %69, %3
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @STATE_DONE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 4
  store i32 %89, i32* %92, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 8
  %107 = call i32 (...) @WSAGetLastError()
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 3
  store i32* %117, i32** %119, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %70
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %125
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @CMD_RESP, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = call i32 @ITransportCallback_OnCommand(i64 %135, i32 %136, i8* %140, i32 %144, i32* %148)
  br label %150

150:                                              ; preds = %131, %125, %70
  %151 = load i32, i32* @S_OK, align 4
  ret i32 %151
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @debugstr_a(i8*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @parse_response(%struct.TYPE_20__*) #1

declare dso_local i32 @parse_uidl_response(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @parse_stat_response(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @parse_list_response(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @parse_dele_response(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @parse_retr_response(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @parse_top_response(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @ITransportCallback_OnCommand(i64, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
