; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_send_command.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i16, i64, i64, i8*, i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@redis_cluster_exception_ce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"The slot %d is not covered by any node in this cluster\00", align 1
@MULTI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to enter MULTI mode on requested slot\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Can't communicate with any node in the cluster\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Can't process MULTI sequence when cluster is resharding\00", align 1
@REDIR_MOVED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"The Redis Cluster is down (CLUSTERDOWN)\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Timed out attempting to find data in the correct node!\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Error processing response from Redis node!\00", align 1
@REDIR_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @cluster_send_command(%struct.TYPE_14__* %0, i16 signext %1, i8* %2, i32 %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i16 %1, i16* %7, align 2
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = load i16, i16* %7, align 2
  %15 = call i32 @SLOT(%struct.TYPE_14__* %13, i16 signext %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @redis_cluster_exception_ce, align 4
  %19 = load i16, i16* %7, align 2
  %20 = call i32 @zend_throw_exception_ex(i32 %18, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i16 signext %19)
  store i16 -1, i16* %5, align 2
  br label %156

21:                                               ; preds = %4
  %22 = load i16, i16* %7, align 2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i16 %22, i16* %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = load i16, i16* %7, align 2
  %27 = call i8* @SLOT_SOCK(%struct.TYPE_14__* %25, i16 signext %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = call i64 (...) @mstime()
  store i64 %30, i64* %12, align 8
  br label %31

31:                                               ; preds = %124, %21
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MULTI, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = call %struct.TYPE_12__* @CMD_SOCK(%struct.TYPE_14__* %40)
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MULTI, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = load i16, i16* %7, align 2
  %49 = call i32 @cluster_send_multi(%struct.TYPE_14__* %47, i16 signext %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 @CLUSTER_THROW_EXCEPTION(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i16 -1, i16* %5, align 2
  br label %156

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %39, %31
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @cluster_sock_write(%struct.TYPE_14__* %55, i8* %56, i32 %57, i32 0)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @CLUSTER_THROW_EXCEPTION(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i16 -1, i16* %5, align 2
  br label %156

62:                                               ; preds = %54
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 6
  %66 = call i32 @cluster_check_response(%struct.TYPE_14__* %63, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %126

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MULTI, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = call i32 @CLUSTER_THROW_EXCEPTION(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i16 -1, i16* %5, align 2
  br label %156

83:                                               ; preds = %73
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @REDIR_MOVED, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = call i32 @cluster_update_slot(%struct.TYPE_14__* %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = load i16, i16* %7, align 2
  %94 = call i8* @SLOT_SOCK(%struct.TYPE_14__* %92, i16 signext %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %89, %83
  br label %98

98:                                               ; preds = %97, %70
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = call i64 (...) @mstime()
  %105 = load i64, i64* %12, align 8
  %106 = sub nsw i64 %104, %105
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %106, %109
  %111 = zext i1 %110 to i32
  br label %113

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112, %103
  %114 = phi i32 [ %111, %103 ], [ 0, %112 ]
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %113
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br label %124

124:                                              ; preds = %120, %115
  %125 = phi i1 [ false, %115 ], [ %123, %120 ]
  br i1 %125, label %31, label %126

126:                                              ; preds = %124, %69
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = call i32 @CLUSTER_THROW_EXCEPTION(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i16 -1, i16* %5, align 2
  br label %156

133:                                              ; preds = %126
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %151

139:                                              ; preds = %136, %133
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @redis_sock_disconnect(i8* %142, i32 1)
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = call i32 @CLUSTER_THROW_EXCEPTION(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %150

148:                                              ; preds = %139
  %149 = call i32 @CLUSTER_THROW_EXCEPTION(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %150

150:                                              ; preds = %148, %146
  store i16 -1, i16* %5, align 2
  br label %156

151:                                              ; preds = %136
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* @REDIR_NONE, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  store i16 0, i16* %5, align 2
  br label %156

156:                                              ; preds = %152, %150, %131, %81, %60, %51, %17
  %157 = load i16, i16* %5, align 2
  ret i16 %157
}

declare dso_local i32 @SLOT(%struct.TYPE_14__*, i16 signext) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i16 signext) #1

declare dso_local i8* @SLOT_SOCK(%struct.TYPE_14__*, i16 signext) #1

declare dso_local i64 @mstime(...) #1

declare dso_local %struct.TYPE_12__* @CMD_SOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @cluster_send_multi(%struct.TYPE_14__*, i16 signext) #1

declare dso_local i32 @CLUSTER_THROW_EXCEPTION(i8*, i32) #1

declare dso_local i32 @cluster_sock_write(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i32 @cluster_check_response(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @cluster_update_slot(%struct.TYPE_14__*) #1

declare dso_local i32 @redis_sock_disconnect(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
