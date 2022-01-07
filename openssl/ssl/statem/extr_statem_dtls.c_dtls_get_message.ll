; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls_get_message.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls_get_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_15__*, i64, %struct.TYPE_14__*, i32, i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.hm_header_st }
%struct.hm_header_st = type { i64, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@DTLS1_HM_BAD_FRAGMENT = common dso_local global i32 0, align 4
@DTLS1_HM_FRAGMENT_RETRY = common dso_local global i32 0, align 4
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_RT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@DTLS1_BAD_VER = common dso_local global i64 0, align 8
@DTLS1_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_MT_FINISHED = common dso_local global i32 0, align 4
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls_get_message(%struct.TYPE_16__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.hm_header_st*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store %struct.hm_header_st* %16, %struct.hm_header_st** %8, align 8
  %17 = load %struct.hm_header_st*, %struct.hm_header_st** %8, align 8
  %18 = call i32 @memset(%struct.hm_header_st* %17, i32 0, i32 16)
  br label %19

19:                                               ; preds = %31, %3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = call i32 @dtls_get_reassembled_message(%struct.TYPE_16__* %20, i32* %12, i64* %11)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @DTLS1_HM_BAD_FRAGMENT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @DTLS1_HM_FRAGMENT_RETRY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  br label %19

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %165

33:                                               ; preds = %19
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %9, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %33
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 6
  %57 = load i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)** %56, align 8
  %58 = icmp ne i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 6
  %62 = load i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)** %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @SSL3_RT_CHANGE_CIPHER_SPEC, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %62(i32 0, i64 %65, i32 %66, i8* %67, i64 1, %struct.TYPE_16__* %68, i32 %71)
  br label %73

73:                                               ; preds = %59, %54
  store i32 1, i32* %4, align 4
  br label %165

74:                                               ; preds = %33
  %75 = load %struct.hm_header_st*, %struct.hm_header_st** %8, align 8
  %76 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  %78 = load %struct.hm_header_st*, %struct.hm_header_st** %8, align 8
  %79 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  store i8 %81, i8* %82, align 1
  %84 = load i64, i64* %10, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @l2n3(i64 %84, i8* %85)
  %87 = load %struct.hm_header_st*, %struct.hm_header_st** %8, align 8
  %88 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @s2n(i32 %89, i8* %90)
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @l2n3(i64 0, i8* %92)
  %94 = load i64, i64* %10, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @l2n3(i64 %94, i8* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DTLS1_BAD_VER, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %74
  %103 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = sub i64 0, %103
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %9, align 8
  %107 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %10, align 8
  br label %110

110:                                              ; preds = %102, %74
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SSL3_MT_FINISHED, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = call i32 @ssl3_take_mac(%struct.TYPE_16__* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %165

120:                                              ; preds = %115, %110
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @ssl3_finish_mac(%struct.TYPE_16__* %121, i8* %122, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %165

127:                                              ; preds = %120
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 6
  %130 = load i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)** %129, align 8
  %131 = icmp ne i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)* %130, null
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 6
  %135 = load i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i64, i32, i8*, i64, %struct.TYPE_16__*, i32)** %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = call i32 %135(i32 0, i64 %138, i32 %139, i8* %140, i64 %141, %struct.TYPE_16__* %142, i32 %145)
  br label %147

147:                                              ; preds = %132, %127
  %148 = load %struct.hm_header_st*, %struct.hm_header_st** %8, align 8
  %149 = call i32 @memset(%struct.hm_header_st* %148, i32 0, i32 16)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 4
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %162 = add nsw i64 %160, %161
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 3
  store i64 %162, i64* %164, align 8
  store i32 1, i32* %4, align 4
  br label %165

165:                                              ; preds = %147, %126, %119, %73, %32
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @memset(%struct.hm_header_st*, i32, i32) #1

declare dso_local i32 @dtls_get_reassembled_message(%struct.TYPE_16__*, i32*, i64*) #1

declare dso_local i32 @l2n3(i64, i8*) #1

declare dso_local i32 @s2n(i32, i8*) #1

declare dso_local i32 @ssl3_take_mac(%struct.TYPE_16__*) #1

declare dso_local i32 @ssl3_finish_mac(%struct.TYPE_16__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
