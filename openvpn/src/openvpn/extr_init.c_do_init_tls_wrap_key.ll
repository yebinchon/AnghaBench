; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_tls_wrap_key.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_tls_wrap_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_7__, %struct.options }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.options = type { %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@M_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"ERROR: tls-auth enabled, but no valid --auth algorithm specified ('%s')\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Control Channel Authentication\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tls-auth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @do_init_tls_wrap_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_init_tls_wrap_key(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca %struct.options*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %4 = load %struct.context*, %struct.context** %2, align 8
  %5 = getelementptr inbounds %struct.context, %struct.context* %4, i32 0, i32 1
  store %struct.options* %5, %struct.options** %3, align 8
  %6 = load %struct.options*, %struct.options** %3, align 8
  %7 = getelementptr inbounds %struct.options, %struct.options* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %74

11:                                               ; preds = %1
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = bitcast %struct.TYPE_9__* %15 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = call i32 @CLEAR(i64 %17)
  %19 = load %struct.options*, %struct.options** %3, align 8
  %20 = getelementptr inbounds %struct.options, %struct.options* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @streq(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %11
  %25 = load %struct.options*, %struct.options** %3, align 8
  %26 = getelementptr inbounds %struct.options, %struct.options* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @md_kt_get(i32 %27)
  %29 = load %struct.context*, %struct.context** %2, align 8
  %30 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  %34 = load %struct.context*, %struct.context** %2, align 8
  %35 = getelementptr inbounds %struct.context, %struct.context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @md_kt_size(i32 %39)
  %41 = load %struct.context*, %struct.context** %2, align 8
  %42 = getelementptr inbounds %struct.context, %struct.context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 4
  br label %52

46:                                               ; preds = %11
  %47 = load i32, i32* @M_FATAL, align 4
  %48 = load %struct.options*, %struct.options** %3, align 8
  %49 = getelementptr inbounds %struct.options, %struct.options* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @msg(i32 %47, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %24
  %53 = load %struct.context*, %struct.context** %2, align 8
  %54 = getelementptr inbounds %struct.context, %struct.context* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load %struct.context*, %struct.context** %2, align 8
  %58 = getelementptr inbounds %struct.context, %struct.context* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.options*, %struct.options** %3, align 8
  %62 = getelementptr inbounds %struct.options, %struct.options* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.options*, %struct.options** %3, align 8
  %66 = getelementptr inbounds %struct.options, %struct.options* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.options*, %struct.options** %3, align 8
  %70 = getelementptr inbounds %struct.options, %struct.options* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @crypto_read_openvpn_key(%struct.TYPE_9__* %56, i32* %60, i64 %64, i32 %68, i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %52, %1
  %75 = load %struct.options*, %struct.options** %3, align 8
  %76 = getelementptr inbounds %struct.options, %struct.options* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load %struct.context*, %struct.context** %2, align 8
  %82 = getelementptr inbounds %struct.context, %struct.context* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.options*, %struct.options** %3, align 8
  %86 = getelementptr inbounds %struct.options, %struct.options* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.options*, %struct.options** %3, align 8
  %90 = getelementptr inbounds %struct.options, %struct.options* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.options*, %struct.options** %3, align 8
  %94 = getelementptr inbounds %struct.options, %struct.options* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @tls_crypt_init_key(i32* %84, i64 %88, i32 %92, i64 %95)
  br label %97

97:                                               ; preds = %80, %74
  %98 = load %struct.options*, %struct.options** %3, align 8
  %99 = getelementptr inbounds %struct.options, %struct.options* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %141

103:                                              ; preds = %97
  %104 = load %struct.options*, %struct.options** %3, align 8
  %105 = getelementptr inbounds %struct.options, %struct.options* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load %struct.context*, %struct.context** %2, align 8
  %110 = getelementptr inbounds %struct.context, %struct.context* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load %struct.options*, %struct.options** %3, align 8
  %114 = getelementptr inbounds %struct.options, %struct.options* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.options*, %struct.options** %3, align 8
  %118 = getelementptr inbounds %struct.options, %struct.options* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @tls_crypt_v2_init_server_key(i32* %112, i32 1, i64 %116, i32 %120)
  br label %140

122:                                              ; preds = %103
  %123 = load %struct.context*, %struct.context** %2, align 8
  %124 = getelementptr inbounds %struct.context, %struct.context* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load %struct.context*, %struct.context** %2, align 8
  %128 = getelementptr inbounds %struct.context, %struct.context* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.options*, %struct.options** %3, align 8
  %132 = getelementptr inbounds %struct.options, %struct.options* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.options*, %struct.options** %3, align 8
  %136 = getelementptr inbounds %struct.options, %struct.options* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @tls_crypt_v2_init_client_key(i32* %126, i32* %130, i64 %134, i32 %138)
  br label %140

140:                                              ; preds = %122, %108
  br label %141

141:                                              ; preds = %140, %97
  ret void
}

declare dso_local i32 @CLEAR(i64) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i32 @md_kt_get(i32) #1

declare dso_local i32 @md_kt_size(i32) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @crypto_read_openvpn_key(%struct.TYPE_9__*, i32*, i64, i32, i32, i8*, i8*) #1

declare dso_local i32 @tls_crypt_init_key(i32*, i64, i32, i64) #1

declare dso_local i32 @tls_crypt_v2_init_server_key(i32*, i32, i64, i32) #1

declare dso_local i32 @tls_crypt_v2_init_client_key(i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
