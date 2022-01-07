; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_recv_line.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_proxy.c_recv_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.timeval = type { i32, i64 }

@D_LINK_ERRORS = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"recv_line: TCP port read timeout expired\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"recv_line: TCP port read failed on select()\00", align 1
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"recv_line: TCP port read failed on recv()\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"recv_line: Non-ASCII character (%d) read on recv()\00", align 1
@M_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32, i32, %struct.buffer*, i32*)* @recv_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_line(i64 %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.buffer* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.buffer, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.timeval, align 8
  %22 = alloca i8, align 1
  store i64 %0, i64* %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.buffer* %5, %struct.buffer** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %17, align 4
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CLEAR(i32 %24)
  %26 = load %struct.buffer*, %struct.buffer** %14, align 8
  %27 = icmp ne %struct.buffer* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %7
  %29 = load %struct.buffer*, %struct.buffer** %14, align 8
  %30 = bitcast %struct.buffer* %16 to i8*
  %31 = bitcast %struct.buffer* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  br label %32

32:                                               ; preds = %28, %7
  br label %33

33:                                               ; preds = %32, %139
  %34 = call i64 @buf_defined(%struct.buffer* %16)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 @buf_init(%struct.buffer* %16, i32 0)
  %38 = call i32 @ASSERT(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = call i32 @FD_ZERO(i32* %20)
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @openvpn_fd_set(i64 %41, i32* %20)
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @select(i64 %47, i32* %20, i32* null, i32* null, %struct.timeval* %21)
  store i32 %48, i32* %18, align 4
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @get_signal(i32* %49)
  %51 = load i32*, i32** %15, align 8
  %52 = load volatile i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %149

55:                                               ; preds = %39
  %56 = load i32, i32* %18, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* @D_LINK_ERRORS, align 4
  %63 = load i32, i32* @M_ERRNO, align 4
  %64 = or i32 %62, %63
  %65 = call i32 (i32, i8*, ...) @msg(i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %58
  br label %149

67:                                               ; preds = %55
  %68 = load i32, i32* %18, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* @D_LINK_ERRORS, align 4
  %75 = load i32, i32* @M_ERRNO, align 4
  %76 = or i32 %74, %75
  %77 = call i32 (i32, i8*, ...) @msg(i32 %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %70
  br label %149

79:                                               ; preds = %67
  %80 = load i64, i64* %9, align 8
  %81 = load i32, i32* @MSG_NOSIGNAL, align 4
  %82 = call i32 @recv(i64 %80, i8* %22, i32 1, i32 %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @D_LINK_ERRORS, align 4
  %90 = load i32, i32* @M_ERRNO, align 4
  %91 = or i32 %89, %90
  %92 = call i32 (i32, i8*, ...) @msg(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %85
  br label %149

94:                                               ; preds = %79
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i8, i8* %22, align 1
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  store i8 %98, i8* %99, align 1
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %97, %94
  %104 = call i64 @buf_defined(%struct.buffer* %16)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %103
  %107 = load i8, i8* %22, align 1
  %108 = call i32 @buf_write_u8(%struct.buffer* %16, i8 signext %107)
  %109 = load i8, i8* %22, align 1
  %110 = call i64 @isprint(i8 signext %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %106
  %113 = load i8, i8* %22, align 1
  %114 = call i32 @isspace(i8 signext %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* @D_LINK_ERRORS, align 4
  %121 = load i32, i32* @M_ERRNO, align 4
  %122 = or i32 %120, %121
  %123 = load i8, i8* %22, align 1
  %124 = sext i8 %123 to i32
  %125 = call i32 (i32, i8*, ...) @msg(i32 %122, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %119, %116
  %127 = load %struct.buffer*, %struct.buffer** %14, align 8
  %128 = bitcast %struct.buffer* %127 to i8*
  %129 = bitcast %struct.buffer* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  br label %150

130:                                              ; preds = %112, %106
  br label %131

131:                                              ; preds = %130, %103
  %132 = load i32, i32* %17, align 4
  %133 = icmp eq i32 %132, 13
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i8, i8* %22, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 10
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %142

139:                                              ; preds = %134, %131
  %140 = load i8, i8* %22, align 1
  %141 = sext i8 %140 to i32
  store i32 %141, i32* %17, align 4
  br label %33

142:                                              ; preds = %138
  %143 = load i32, i32* %11, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i8*, i8** %10, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %10, align 8
  store i8 0, i8* %146, align 1
  br label %148

148:                                              ; preds = %145, %142
  store i32 1, i32* %8, align 4
  br label %150

149:                                              ; preds = %93, %78, %66, %54
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %149, %148, %126
  %151 = load i32, i32* %8, align 4
  ret i32 %151
}

declare dso_local i32 @CLEAR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @buf_defined(%struct.buffer*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_init(%struct.buffer*, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @openvpn_fd_set(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @get_signal(i32*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @recv(i64, i8*, i32, i32) #1

declare dso_local i32 @buf_write_u8(%struct.buffer*, i8 signext) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
