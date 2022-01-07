; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_encrypt_sign.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_encrypt_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_20__, i32, i32, %struct.TYPE_19__*, %struct.crypto_options, i32, i32, i64, %struct.TYPE_16__*, %struct.context_buffers* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_19__ = type { i64 }
%struct.crypto_options = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_20__*, i32, %struct.TYPE_16__*, i32*)* }
%struct.context_buffers = type { i32, i32, i32 }

@CAS_SUCCEEDED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encrypt_sign(%struct.context* %0, i32 %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.context_buffers*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_options*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.context*, %struct.context** %3, align 8
  %9 = getelementptr inbounds %struct.context, %struct.context* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 10
  %11 = load %struct.context_buffers*, %struct.context_buffers** %10, align 8
  store %struct.context_buffers* %11, %struct.context_buffers** %5, align 8
  %12 = load %struct.context*, %struct.context** %3, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  store %struct.crypto_options* null, %struct.crypto_options** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.context_buffers*, %struct.context_buffers** %5, align 8
  %22 = getelementptr inbounds %struct.context_buffers, %struct.context_buffers* %21, i32 0, i32 1
  %23 = load %struct.context*, %struct.context** %3, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 6
  %26 = call i32 @FRAME_HEADROOM(i32* %25)
  %27 = call i32 @buf_init(i32* %22, i32 %26)
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.context*, %struct.context** %3, align 8
  %30 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, null
  br i1 %33, label %34, label %66

34:                                               ; preds = %20
  %35 = load %struct.context*, %struct.context** %3, align 8
  %36 = getelementptr inbounds %struct.context, %struct.context* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = load %struct.context*, %struct.context** %3, align 8
  %40 = getelementptr inbounds %struct.context, %struct.context* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = call i32 @tls_pre_encrypt(%struct.TYPE_19__* %38, %struct.TYPE_20__* %41, %struct.crypto_options** %7)
  %43 = load %struct.context*, %struct.context** %3, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %34
  %50 = load %struct.context*, %struct.context** %3, align 8
  %51 = getelementptr inbounds %struct.context, %struct.context* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.context*, %struct.context** %3, align 8
  %59 = getelementptr inbounds %struct.context, %struct.context* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = load %struct.context_buffers*, %struct.context_buffers** %5, align 8
  %63 = getelementptr inbounds %struct.context_buffers, %struct.context_buffers* %62, i32 0, i32 1
  %64 = call i32 @tls_prepend_opcode_v2(%struct.TYPE_19__* %61, i32* %63)
  br label %65

65:                                               ; preds = %57, %49, %34
  br label %70

66:                                               ; preds = %20
  %67 = load %struct.context*, %struct.context** %3, align 8
  %68 = getelementptr inbounds %struct.context, %struct.context* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 5
  store %struct.crypto_options* %69, %struct.crypto_options** %7, align 8
  br label %70

70:                                               ; preds = %66, %65
  %71 = load %struct.context*, %struct.context** %3, align 8
  %72 = getelementptr inbounds %struct.context, %struct.context* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load %struct.context_buffers*, %struct.context_buffers** %5, align 8
  %75 = getelementptr inbounds %struct.context_buffers, %struct.context_buffers* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.crypto_options*, %struct.crypto_options** %7, align 8
  %78 = call i32 @openvpn_encrypt(%struct.TYPE_20__* %73, i32 %76, %struct.crypto_options* %77)
  %79 = load %struct.context*, %struct.context** %3, align 8
  %80 = getelementptr inbounds %struct.context, %struct.context* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = icmp ne %struct.TYPE_19__* %82, null
  br i1 %83, label %84, label %117

84:                                               ; preds = %70
  %85 = load %struct.context*, %struct.context** %3, align 8
  %86 = getelementptr inbounds %struct.context, %struct.context* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %84
  %92 = load %struct.context*, %struct.context** %3, align 8
  %93 = getelementptr inbounds %struct.context, %struct.context* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %91
  %100 = load %struct.context*, %struct.context** %3, align 8
  %101 = getelementptr inbounds %struct.context, %struct.context* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = load %struct.context*, %struct.context** %3, align 8
  %105 = getelementptr inbounds %struct.context, %struct.context* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = call i32 @tls_prepend_opcode_v1(%struct.TYPE_19__* %103, %struct.TYPE_20__* %106)
  br label %108

108:                                              ; preds = %99, %91, %84
  %109 = load %struct.context*, %struct.context** %3, align 8
  %110 = getelementptr inbounds %struct.context, %struct.context* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = load %struct.context*, %struct.context** %3, align 8
  %114 = getelementptr inbounds %struct.context, %struct.context* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = call i32 @tls_post_encrypt(%struct.TYPE_19__* %112, %struct.TYPE_20__* %115)
  br label %117

117:                                              ; preds = %108, %70
  %118 = load %struct.context*, %struct.context** %3, align 8
  %119 = getelementptr inbounds %struct.context, %struct.context* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load %struct.context*, %struct.context** %3, align 8
  %122 = call i32 @get_link_socket_info(%struct.context* %121)
  %123 = load %struct.context*, %struct.context** %3, align 8
  %124 = getelementptr inbounds %struct.context, %struct.context* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  %126 = call i32 @link_socket_get_outgoing_addr(%struct.TYPE_20__* %120, i32 %122, i32* %125)
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.context*, %struct.context** %3, align 8
  %129 = getelementptr inbounds %struct.context, %struct.context* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = load %struct.context*, %struct.context** %3, align 8
  %132 = getelementptr inbounds %struct.context, %struct.context* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load %struct.context_buffers*, %struct.context_buffers** %5, align 8
  %135 = getelementptr inbounds %struct.context_buffers, %struct.context_buffers* %134, i32 0, i32 0
  %136 = call i32 @buffer_turnover(i32* %127, i32* %130, %struct.TYPE_20__* %133, i32* %135)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_init(i32*, i32) #1

declare dso_local i32 @FRAME_HEADROOM(i32*) #1

declare dso_local i32 @tls_pre_encrypt(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.crypto_options**) #1

declare dso_local i32 @tls_prepend_opcode_v2(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @openvpn_encrypt(%struct.TYPE_20__*, i32, %struct.crypto_options*) #1

declare dso_local i32 @tls_prepend_opcode_v1(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @tls_post_encrypt(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @link_socket_get_outgoing_addr(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @get_link_socket_info(%struct.context*) #1

declare dso_local i32 @buffer_turnover(i32*, i32*, %struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
