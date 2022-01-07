; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_content_sender_send.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_content_sender_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i64*)* @php_cli_server_content_sender_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_cli_server_content_sender_send(%struct.TYPE_14__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %8, align 8
  br label %16

16:                                               ; preds = %159, %3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  br i1 %18, label %19, label %161

19:                                               ; preds = %16
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %9, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %158 [
    i32 129, label %26
    i32 128, label %92
  ]

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @send(i32 %27, i64 %32, i32 %37, i32 0)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load i64, i64* %10, align 8
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  %44 = call i32 (...) @php_socket_errno()
  store i32 %44, i32* %4, align 4
  br label %164

45:                                               ; preds = %26
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %46, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %45
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = call i32 @php_cli_server_chunk_dtor(%struct.TYPE_15__* %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = call i32 @pefree(%struct.TYPE_15__* %57, i32 1)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = icmp ne %struct.TYPE_15__* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %54
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %65, %54
  br label %87

70:                                               ; preds = %45
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %71
  store i64 %77, i64* %75, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = sub i64 %84, %78
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  br label %87

87:                                               ; preds = %70, %69
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %10, align 8
  br label %158

92:                                               ; preds = %19
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @send(i32 %93, i64 %98, i32 %103, i32 0)
  store i64 %104, i64* %11, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp ult i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %92
  %108 = load i64, i64* %10, align 8
  %109 = load i64*, i64** %7, align 8
  store i64 %108, i64* %109, align 8
  %110 = call i32 (...) @php_socket_errno()
  store i32 %110, i32* %4, align 4
  br label %164

111:                                              ; preds = %92
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = icmp eq i64 %112, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %111
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %122 = call i32 @php_cli_server_chunk_dtor(%struct.TYPE_15__* %121)
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = call i32 @pefree(%struct.TYPE_15__* %123, i32 1)
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %128, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %130 = icmp ne %struct.TYPE_15__* %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %120
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i32* null, i32** %134, align 8
  br label %135

135:                                              ; preds = %131, %120
  br label %153

136:                                              ; preds = %111
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, %137
  store i64 %143, i64* %141, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = sub i64 %150, %144
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 8
  br label %153

153:                                              ; preds = %136, %135
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* %10, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %10, align 8
  br label %158

158:                                              ; preds = %19, %154, %88
  br label %159

159:                                              ; preds = %158
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %160, %struct.TYPE_15__** %8, align 8
  br label %16

161:                                              ; preds = %16
  %162 = load i64, i64* %10, align 8
  %163 = load i64*, i64** %7, align 8
  store i64 %162, i64* %163, align 8
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %161, %107, %41
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i64 @send(i32, i64, i32, i32) #1

declare dso_local i32 @php_socket_errno(...) #1

declare dso_local i32 @php_cli_server_chunk_dtor(%struct.TYPE_15__*) #1

declare dso_local i32 @pefree(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
