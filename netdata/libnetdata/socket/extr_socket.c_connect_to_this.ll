; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_connect_to_this.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/socket/extr_socket.c_connect_to_this.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"tcp:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"udp:\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"unix:\00", align 1
@D_CONNECT_TO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [107 x i8] c"Attempting connection to host = '%s', service = '%s', interface = '%s', protocol = %d (tcp = %d, udp = %d)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Definition '%s' does not specify a host.\00", align 1
@.str.7 = private unnamed_addr constant [91 x i8] c"Cannot find a network interface named '%s'. Continuing with limiting the network interface\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect_to_this(i8* %0, i32 %1, %struct.timeval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [11 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %8, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcpy(i8* %25, i8* %26)
  %28 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @snprintfz(i8* %28, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i8* %25, i8** %11, align 8
  %31 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  store i8* %31, i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %32 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %33, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @strncmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %41, i32* %15, align 4
  br label %63

42:                                               ; preds = %3
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %48, i8** %11, align 8
  %49 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %50, i32* %15, align 4
  br label %62

51:                                               ; preds = %42
  %52 = load i8*, i8** %11, align 8
  %53 = call i64 @strncmp(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 5
  store i8* %57, i8** %17, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = load %struct.timeval*, %struct.timeval** %7, align 8
  %60 = call i32 @connect_to_unix(i8* %58, %struct.timeval* %59)
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %197

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i8*, i8** %11, align 8
  store i8* %64, i8** %19, align 8
  %65 = load i8*, i8** %19, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 91
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %11, align 8
  store i8* %71, i8** %19, align 8
  br label %72

72:                                               ; preds = %84, %69
  %73 = load i8*, i8** %19, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i8*, i8** %19, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 93
  br label %82

82:                                               ; preds = %77, %72
  %83 = phi i1 [ false, %72 ], [ %81, %77 ]
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = load i8*, i8** %19, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %19, align 8
  br label %72

87:                                               ; preds = %82
  %88 = load i8*, i8** %19, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 93
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i8*, i8** %19, align 8
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %19, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %19, align 8
  br label %96

96:                                               ; preds = %92, %87
  br label %119

97:                                               ; preds = %63
  br label %98

98:                                               ; preds = %115, %97
  %99 = load i8*, i8** %19, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load i8*, i8** %19, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 58
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i8*, i8** %19, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 37
  br label %113

113:                                              ; preds = %108, %103, %98
  %114 = phi i1 [ false, %103 ], [ false, %98 ], [ %112, %108 ]
  br i1 %114, label %115, label %118

115:                                              ; preds = %113
  %116 = load i8*, i8** %19, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %19, align 8
  br label %98

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %96
  %120 = load i8*, i8** %19, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 37
  br i1 %123, label %124, label %145

124:                                              ; preds = %119
  %125 = load i8*, i8** %19, align 8
  store i8 0, i8* %125, align 1
  %126 = load i8*, i8** %19, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %19, align 8
  %128 = load i8*, i8** %19, align 8
  store i8* %128, i8** %13, align 8
  br label %129

129:                                              ; preds = %141, %124
  %130 = load i8*, i8** %19, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i8*, i8** %19, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 58
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i1 [ false, %129 ], [ %138, %134 ]
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = load i8*, i8** %19, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %19, align 8
  br label %129

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %119
  %146 = load i8*, i8** %19, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 58
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i8*, i8** %19, align 8
  store i8 0, i8* %151, align 1
  %152 = load i8*, i8** %19, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %19, align 8
  %154 = load i8*, i8** %19, align 8
  store i8* %154, i8** %12, align 8
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i32, i32* @D_CONNECT_TO, align 4
  %157 = load i8*, i8** %11, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = load i8*, i8** %13, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @IPPROTO_TCP, align 4
  %162 = load i32, i32* @IPPROTO_UDP, align 4
  %163 = call i32 @debug(i32 %156, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i8* %157, i8* %158, i8* %159, i32 %160, i32 %161, i32 %162)
  %164 = load i8*, i8** %11, align 8
  %165 = load i8, i8* %164, align 1
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %155
  %168 = load i8*, i8** %5, align 8
  %169 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %168)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %197

170:                                              ; preds = %155
  %171 = load i8*, i8** %13, align 8
  %172 = load i8, i8* %171, align 1
  %173 = icmp ne i8 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load i8*, i8** %13, align 8
  %176 = call i64 @if_nametoindex(i8* %175)
  store i64 %176, i64* %16, align 8
  %177 = load i64, i64* %16, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = load i8*, i8** %13, align 8
  %181 = call i32 @error(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.7, i64 0, i64 0), i8* %180)
  br label %182

182:                                              ; preds = %179, %174
  br label %183

183:                                              ; preds = %182, %170
  %184 = load i8*, i8** %12, align 8
  %185 = load i8, i8* %184, align 1
  %186 = icmp ne i8 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  store i8* %188, i8** %12, align 8
  br label %189

189:                                              ; preds = %187, %183
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %15, align 4
  %192 = load i8*, i8** %11, align 8
  %193 = load i64, i64* %16, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = load %struct.timeval*, %struct.timeval** %7, align 8
  %196 = call i32 @connect_to_this_ip46(i32 %190, i32 %191, i8* %192, i64 %193, i8* %194, %struct.timeval* %195)
  store i32 %196, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %197

197:                                              ; preds = %189, %167, %55
  %198 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @connect_to_unix(i8*, %struct.timeval*) #1

declare dso_local i32 @debug(i32, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @if_nametoindex(i8*) #1

declare dso_local i32 @connect_to_this_ip46(i32, i32, i8*, i64, i8*, %struct.timeval*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
