; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_pc_getnameinfo.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_pc_getnameinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.sockaddr_in = type { i32 }

@proxychains_resolver = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EAI_FAMILY = common dso_local global i32 0, align 4
@EAI_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%%%u\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pc_getnameinfo(%struct.sockaddr* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i8], align 1
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = call i32 (...) @INIT()
  %22 = call i32 (...) @PFUNC()
  %23 = load i32, i32* @proxychains_resolver, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %7
  %26 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @true_getnameinfo(%struct.sockaddr* %26, i32 %27, i8* %28, i32 %29, i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %173

34:                                               ; preds = %7
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @SOCKFAMILY(i32 %40)
  %42 = load i64, i64* @AF_INET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %37
  %45 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @SOCKFAMILY(i32 %47)
  %49 = load i64, i64* @AF_INET6, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %44, %34
  %52 = load i32, i32* @EAI_FAMILY, align 4
  store i32 %52, i32* %8, align 4
  br label %173

53:                                               ; preds = %44, %37
  %54 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @SOCKFAMILY(i32 %56)
  %58 = load i64, i64* @AF_INET6, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i64 16, i64 4
  %67 = icmp ult i64 %62, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i32, i32* @EAI_FAMILY, align 4
  store i32 %69, i32* %8, align 4
  br label %173

70:                                               ; preds = %53
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %154

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %78 = bitcast %struct.sockaddr* %77 to %struct.sockaddr_in6*
  %79 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %78, i32 0, i32 1
  %80 = bitcast %struct.TYPE_2__* %79 to i8*
  br label %86

81:                                               ; preds = %73
  %82 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %83 = bitcast %struct.sockaddr* %82 to %struct.sockaddr_in*
  %84 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %83, i32 0, i32 0
  %85 = bitcast i32* %84 to i8*
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i8* [ %80, %76 ], [ %85, %81 ]
  store i8* %87, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %92 = bitcast %struct.sockaddr* %91 to %struct.sockaddr_in6*
  %93 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %92, i32 0, i32 1
  %94 = call i64 @is_v4inv6(%struct.TYPE_2__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  %98 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %99 = bitcast %struct.sockaddr* %98 to %struct.sockaddr_in6*
  %100 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 12
  %104 = call i32 @memcpy(i8* %97, i32* %103, i32 4)
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i64 0, i64 0
  store i8* %105, i8** %18, align 8
  store i32 0, i32* %16, align 4
  br label %111

106:                                              ; preds = %90
  %107 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %108 = bitcast %struct.sockaddr* %107 to %struct.sockaddr_in6*
  %109 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %19, align 4
  br label %111

111:                                              ; preds = %106, %96
  br label %112

112:                                              ; preds = %111, %86
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i64, i64* @AF_INET6, align 8
  br label %119

117:                                              ; preds = %112
  %118 = load i64, i64* @AF_INET, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i64 [ %116, %115 ], [ %118, %117 ]
  %121 = load i8*, i8** %18, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @inet_ntop(i64 %120, i8* %121, i8* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* @EAI_OVERFLOW, align 4
  store i32 %127, i32* %8, align 4
  br label %173

128:                                              ; preds = %119
  %129 = load i32, i32* %19, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %128
  %132 = load i8*, i8** %11, align 8
  %133 = call i64 @strlen(i8* %132)
  store i64 %133, i64* %20, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = load i64, i64* %20, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %20, align 8
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* %19, align 4
  %143 = call i32 @snprintf(i8* %136, i32 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %20, align 8
  %148 = sub i64 %146, %147
  %149 = icmp uge i64 %144, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %131
  %151 = load i32, i32* @EAI_OVERFLOW, align 4
  store i32 %151, i32* %8, align 4
  br label %173

152:                                              ; preds = %131
  br label %153

153:                                              ; preds = %152, %128
  br label %154

154:                                              ; preds = %153, %70
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %154
  %158 = load i8*, i8** %13, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %161 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @SOCKPORT(i32 %162)
  %164 = call i32 @ntohs(i32 %163)
  %165 = call i32 @snprintf(i8* %158, i32 %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %14, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %157
  %169 = load i32, i32* @EAI_OVERFLOW, align 4
  store i32 %169, i32* %8, align 4
  br label %173

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170, %154
  br label %172

172:                                              ; preds = %171
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %172, %168, %150, %126, %68, %51, %25
  %174 = load i32, i32* %8, align 4
  ret i32 %174
}

declare dso_local i32 @INIT(...) #1

declare dso_local i32 @PFUNC(...) #1

declare dso_local i32 @true_getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @SOCKFAMILY(i32) #1

declare dso_local i64 @is_v4inv6(%struct.TYPE_2__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @inet_ntop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @SOCKPORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
