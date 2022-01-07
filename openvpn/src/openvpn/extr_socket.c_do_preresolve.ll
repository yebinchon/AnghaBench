; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_do_preresolve.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_do_preresolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, %struct.connection_list* }
%struct.connection_list = type { i32, %struct.connection_entry** }
%struct.connection_entry = type { i8*, i8*, i8*, i32, i32, i64, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@GETADDR_RESOLVE = common dso_local global i32 0, align 4
@GETADDR_UPDATE_MANAGEMENT_STATE = common dso_local global i32 0, align 4
@GETADDR_MENTION_RESOLVE_RETRY = common dso_local global i32 0, align 4
@GETADDR_FATAL = common dso_local global i32 0, align 4
@GETADDR_DATAGRAM = common dso_local global i32 0, align 4
@SF_HOST_RANDOMIZE = common dso_local global i32 0, align 4
@GETADDR_RANDOMIZE = common dso_local global i32 0, align 4
@GETADDR_PASSIVE = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Preresolving failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_preresolve(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection_entry*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %10 = load %struct.context*, %struct.context** %2, align 8
  %11 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.connection_list*, %struct.connection_list** %12, align 8
  store %struct.connection_list* %13, %struct.connection_list** %4, align 8
  %14 = load i32, i32* @GETADDR_RESOLVE, align 4
  %15 = load i32, i32* @GETADDR_UPDATE_MANAGEMENT_STATE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @GETADDR_MENTION_RESOLVE_RETRY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GETADDR_FATAL, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %173, %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.connection_list*, %struct.connection_list** %4, align 8
  %24 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %176

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.context*, %struct.context** %2, align 8
  %30 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load %struct.connection_list*, %struct.connection_list** %31, align 8
  %33 = getelementptr inbounds %struct.connection_list, %struct.connection_list* %32, i32 0, i32 1
  %34 = load %struct.connection_entry**, %struct.connection_entry*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.connection_entry*, %struct.connection_entry** %34, i64 %36
  %38 = load %struct.connection_entry*, %struct.connection_entry** %37, align 8
  store %struct.connection_entry* %38, %struct.connection_entry** %9, align 8
  %39 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %40 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @proto_is_dgram(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %27
  %45 = load i32, i32* @GETADDR_DATAGRAM, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %27
  %49 = load %struct.context*, %struct.context** %2, align 8
  %50 = getelementptr inbounds %struct.context, %struct.context* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SF_HOST_RANDOMIZE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @GETADDR_RANDOMIZE, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.context*, %struct.context** %2, align 8
  %62 = getelementptr inbounds %struct.context, %struct.context* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.context*, %struct.context** %2, align 8
  %68 = getelementptr inbounds %struct.context, %struct.context* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %7, align 8
  br label %75

71:                                               ; preds = %60
  %72 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %73 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %7, align 8
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %77 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %76, i32 0, i32 7
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = icmp ne %struct.TYPE_4__* %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %75
  %81 = load %struct.context*, %struct.context** %2, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %84 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %87 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @do_preresolve_host(%struct.context* %81, i8* %82, i32 %85, i32 %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  br label %177

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %97 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %96, i32 0, i32 7
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = icmp ne %struct.TYPE_4__* %98, null
  br i1 %99, label %100, label %121

100:                                              ; preds = %95
  %101 = load %struct.context*, %struct.context** %2, align 8
  %102 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %103 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %102, i32 0, i32 7
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %108 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %107, i32 0, i32 7
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %113 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @do_preresolve_host(%struct.context* %101, i8* %106, i32 %111, i32 %114, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %100
  br label %177

120:                                              ; preds = %100
  br label %121

121:                                              ; preds = %120, %95
  %122 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %123 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %143

126:                                              ; preds = %121
  %127 = load %struct.context*, %struct.context** %2, align 8
  %128 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %129 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %132 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %135 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @do_preresolve_host(%struct.context* %127, i8* %130, i32 %133, i32 %136, i32 %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %126
  br label %177

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142, %121
  %144 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %145 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %143
  %149 = load i32, i32* @GETADDR_PASSIVE, align 4
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* @GETADDR_RANDOMIZE, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load %struct.context*, %struct.context** %2, align 8
  %157 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %158 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %161 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.connection_entry*, %struct.connection_entry** %9, align 8
  %164 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @do_preresolve_host(%struct.context* %156, i8* %159, i32 %162, i32 %165, i32 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %148
  br label %177

171:                                              ; preds = %148
  br label %172

172:                                              ; preds = %171, %143
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %3, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %3, align 4
  br label %21

176:                                              ; preds = %21
  br label %180

177:                                              ; preds = %170, %141, %119, %93
  %178 = load i32, i32* @SIGHUP, align 4
  %179 = call i32 @throw_signal_soft(i32 %178, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %176
  ret void
}

declare dso_local i64 @proto_is_dgram(i32) #1

declare dso_local i32 @do_preresolve_host(%struct.context*, i8*, i32, i32, i32) #1

declare dso_local i32 @throw_signal_soft(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
