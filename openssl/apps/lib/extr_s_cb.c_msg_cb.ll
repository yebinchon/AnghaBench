; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_msg_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_msg_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c">>>\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"<<<\00", align 1
@ssl_versions = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SSL3_VERSION = common dso_local global i32 0, align 4
@TLS1_VERSION = common dso_local global i32 0, align 4
@TLS1_1_VERSION = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@TLS1_3_VERSION = common dso_local global i32 0, align 4
@DTLS1_VERSION = common dso_local global i32 0, align 4
@DTLS1_BAD_VER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c", ChangeCipherSpec\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c", Alert\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c", ???\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c", warning\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c", fatal\00", align 1
@alert_types = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c" ???\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c", Handshake\00", align 1
@handshakes = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c", ApplicationData\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"%s %s%s [length %04lx]%s%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_cb(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %15, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  store i8* %29, i8** %16, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ssl_versions, align 4
  %32 = call i8* @lookup(i32 %30, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %17, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  %33 = load i8*, i8** %11, align 8
  store i8* %33, i8** %21, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SSL3_VERSION, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %61, label %37

37:                                               ; preds = %7
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @TLS1_VERSION, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %61, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @TLS1_1_VERSION, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @TLS1_2_VERSION, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @TLS1_3_VERSION, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @DTLS1_VERSION, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @DTLS1_BAD_VER, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %57, %53, %49, %45, %41, %37, %7
  %62 = load i32, i32* %10, align 4
  switch i32 %62, label %94 [
    i32 20, label %63
    i32 21, label %64
    i32 22, label %82
    i32 23, label %93
  ]

63:                                               ; preds = %61
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %94

64:                                               ; preds = %61
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %19, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp eq i64 %65, 2
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i8*, i8** %21, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  switch i32 %71, label %74 [
    i32 1, label %72
    i32 2, label %73
  ]

72:                                               ; preds = %67
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  br label %74

73:                                               ; preds = %67
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %19, align 8
  br label %74

74:                                               ; preds = %67, %73, %72
  %75 = load i8*, i8** %21, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i32, i32* @alert_types, align 4
  %80 = call i8* @lookup(i32 %78, i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i8* %80, i8** %20, align 8
  br label %81

81:                                               ; preds = %74, %64
  br label %94

82:                                               ; preds = %61
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp ugt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i8*, i8** %21, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i32, i32* @handshakes, align 4
  %91 = call i8* @lookup(i32 %89, i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %91, i8** %19, align 8
  br label %92

92:                                               ; preds = %85, %82
  br label %94

93:                                               ; preds = %61
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %18, align 8
  br label %94

94:                                               ; preds = %61, %93, %92, %81, %63
  br label %95

95:                                               ; preds = %94, %57
  %96 = load i32*, i32** %15, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = load i8*, i8** %20, align 8
  %103 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %97, i8* %98, i8* %99, i64 %100, i8* %101, i8* %102)
  %104 = load i64, i64* %12, align 8
  %105 = icmp ugt i64 %104, 0
  br i1 %105, label %106, label %145

106:                                              ; preds = %95
  %107 = load i32*, i32** %15, align 8
  %108 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %22, align 8
  store i64 0, i64* %23, align 8
  br label %110

110:                                              ; preds = %132, %106
  %111 = load i64, i64* %23, align 8
  %112 = load i64, i64* %22, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %110
  %115 = load i64, i64* %23, align 8
  %116 = urem i64 %115, 16
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i64, i64* %23, align 8
  %120 = icmp ugt i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32*, i32** %15, align 8
  %123 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %118, %114
  %125 = load i32*, i32** %15, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = load i64, i64* %23, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %124
  %133 = load i64, i64* %23, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %23, align 8
  br label %110

135:                                              ; preds = %110
  %136 = load i64, i64* %23, align 8
  %137 = load i64, i64* %12, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %135
  %143 = load i32*, i32** %15, align 8
  %144 = call i32 (i32*, i8*, ...) @BIO_printf(i32* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %95
  %146 = load i32*, i32** %15, align 8
  %147 = call i32 @BIO_flush(i32* %146)
  ret void
}

declare dso_local i8* @lookup(i32, i32, i8*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i32 @BIO_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
